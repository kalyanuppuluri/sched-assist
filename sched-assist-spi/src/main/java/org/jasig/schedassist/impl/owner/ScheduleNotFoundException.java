/**
 * Licensed to Jasig under one or more contributor license
 * agreements. See the NOTICE file distributed with this work
 * for additional information regarding copyright ownership.
 * Jasig licenses this file to you under the Apache License,
 * Version 2.0 (the "License"); you may not use this file
 * except in compliance with the License. You may obtain a
 * copy of the License at:
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on
 * an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

package org.jasig.schedassist.impl.owner;

/**
 * Exception that can be thrown if schedule cannot be found for an {@link IScheduleOwner}.
 * 
 * @author Nicholas Blair, nblair@doit.wisc.edu
 * @version $Id: ScheduleNotFoundException.java 1710 2010-02-15 16:19:35Z npblair $
 */
public class ScheduleNotFoundException extends Exception {

	private static final long serialVersionUID = 53706L;
	
	/**
	 * 
	 */
	public ScheduleNotFoundException() {
		super();
	}

	/**
	 * @param message
	 * @param cause
	 */
	public ScheduleNotFoundException(String message, Throwable cause) {
		super(message, cause);
	}

	/**
	 * @param message
	 */
	public ScheduleNotFoundException(String message) {
		super(message);
	}

	/**
	 * @param cause
	 */
	public ScheduleNotFoundException(Throwable cause) {
		super(cause);
	}

}
