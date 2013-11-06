Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ve42e-0001QW-Jw
 for barebox@lists.infradead.org; Wed, 06 Nov 2013 14:25:09 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1Ve42H-0008LJ-8R
 for barebox@lists.infradead.org; Wed, 06 Nov 2013 15:24:45 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1Ve42H-0002Iq-6o
 for barebox@lists.infradead.org; Wed, 06 Nov 2013 15:24:45 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed,  6 Nov 2013 15:24:38 +0100
Message-Id: <1383747881-15698-1-git-send-email-jbe@pengutronix.de>
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
Subject: [RFC] FPGA: add a simple framework for firmware programming
To: barebox@lists.infradead.org

This is just a simple API to be used within C programs or via a shell command
to be able to program firmware into an attached FPGA. To hide the details how
to deal with the specific FPGA a handler register itself which does the real
work.
All users of this API just have to provide a handler identifier and the
firmware file.
As an example I added a firmware handler for an ALTERA FPGA connected via SPI
as its programming interface.

Comments are welcome.

Juergen


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
