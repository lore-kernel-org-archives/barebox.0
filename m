Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cElDY-0000J3-6l
 for barebox@lists.infradead.org; Wed, 07 Dec 2016 23:01:41 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 18694206CD
 for <barebox@lists.infradead.org>; Wed,  7 Dec 2016 18:01:16 -0500 (EST)
Received: from JonThinkpad (c-67-165-223-215.hsd1.co.comcast.net
 [67.165.223.215])
 by mail.messagingengine.com (Postfix) with ESMTPA id 91B572478C
 for <barebox@lists.infradead.org>; Wed,  7 Dec 2016 18:01:15 -0500 (EST)
From: "Jonathan Stackhouse" <jon@beiwy.com>
Date: Wed, 7 Dec 2016 16:01:14 -0700
Message-ID: <005301d250dd$d02054e0$7060fea0$@beiwy.com>
MIME-Version: 1.0
Content-Language: en-us
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: AM335x Porting Questions
To: barebox@lists.infradead.org

Hello Barebox Community!

I'm attempting to port the Beaglebone board files
(arch/arm/boards/beaglebone) to another similar board, but am having a bit
of a hard time understanding what all I need to do.

Is there a specific procedure that I should follow when porting barebox or
is it merely making changes/additions to the files in
arch/{ARCH}/boards/some-similar-board? I've read though the README in the
barebox root directory as well as several of the docs in the Documentation
folder and the online user manual but have not found the information I am
looking for.

Do the SPL/MLO and barebox.bin write any data to log files for debugging
purposes? If so, how do I configure the builds for these logs and how do I
access them? I'm asking because I noticed under Debugging in menuconfig that
I can set the "default loglevel" but I don't know where the log gets stored,
and I wanted to view it to see whether my MLO is working or not.

Additionally, I've attempted to get the MLO to initialize UART0 and UART2
for debugging purposes, but can't seem to get the "MLO>" prompt to appear in
PuTTY (settings are 115200, 8N1, no flow control). I have console support
set to "full", Console activation strategy set to "activate first console on
startup", low level debug messages enabled, and the OMAP Debug UART Port
Selection set to 2. I also used the same UART initialization code that is in
the beaglebone lowlevel.c file, with the exception that I set it up for
UART2 instead of UART0. What else I need to do?

I apologize for this rather broad and long email, but I've been battling
this for quite some time and have finally decided to reach out for help.

Thank you,
Jon S.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
