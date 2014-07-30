Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XCQzt-00070X-W3
 for barebox@lists.infradead.org; Wed, 30 Jul 2014 10:20:38 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1XCQzQ-0003cV-KM
 for barebox@lists.infradead.org; Wed, 30 Jul 2014 12:20:08 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <jbe@pengutronix.de>)
 id 1XCQzQ-0006zb-Ae
 for barebox@lists.infradead.org; Wed, 30 Jul 2014 12:20:08 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Wed, 30 Jul 2014 12:20:03 +0200
Message-Id: <1406715606-6821-1-git-send-email-jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: envfs: provide an intentional way to ignore an existing external
 environment
To: barebox@lists.infradead.org

Some use cases are using the barebox's built-in environment only, but still
provide an external environment store to save a modified environment (for
development purposes for example).
In this case barebox works as intended even if the external store is empty
and thus invalid. But even if it is an intentional behavior, barebox emits an
error message due to an invalid content in the external store (CRC error).

Because this error message will confuse a new user (how to know if this error
message is important or can be ignored?) and it is a bad style to ship
intentionally working systems with error messages, the following change set
adds an "empty environment" feature to barebox.

This change set adds a new option to the saveenv command which will write an
empty environment without content. But it will be marked as a placeholder and
thus should be "ignored" and barebox falls back to its built-in default
environment.

With this feature we now get:

 - if the environment store is empty, we still see an error message and
   barebox still falls back to its built-in default environment
 - if the environment store contains the new placeholder environment, there
   will be no error message but barebox falls back to its built-in default
   environment as well ("intentional behaviour")
 - if the environment store contains a regular environment (modified compared
   to the built-in one) barebox will continue to use it and ignores its
   built-in default environment instead.

Comments are welcome.

Juergen


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
