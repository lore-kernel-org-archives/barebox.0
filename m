Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [217.70.178.89] (helo=slow3-v.mail.gandi.net)
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NQTXy-0007qi-JO
	for barebox@lists.infradead.org; Thu, 31 Dec 2009 22:31:14 +0000
Received: from relay2-v.mail.gandi.net (relay2-v.mail.gandi.net
	[217.70.178.76])
	by slow3-v.mail.gandi.net (Postfix) with ESMTP id 8CFD242FCE
	for <barebox@lists.infradead.org>; Thu, 31 Dec 2009 23:00:12 +0100 (CET)
Received: from d4rwin.no-ip.org (115.Red-88-27-18.staticIP.rima-tde.net
	[88.27.18.115])
	by relay2-v.mail.gandi.net (Postfix) with ESMTP id 43706135D0
	for <barebox@lists.infradead.org>; Thu, 31 Dec 2009 22:59:32 +0100 (CET)
Date: Thu, 31 Dec 2009 22:55:21 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20091231215521.GO5093@darwin>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Fix typo in board.dox
To: barebox@lists.infradead.org

Fix a typo in documentation file about adapting a new board which
misnames the linker script template file

Signed-off-by: Matthias Kaehlcke <matthias@kaehlcke.net>

--

diff --git a/board/board.dox b/board/board.dox
index 9c32682..76bff45 100644
--- a/board/board.dox
+++ b/board/board.dox
@@ -58,7 +58,7 @@ at the right architecture.
 
 @note Consider to use an unique page lable.
 
-@subsection board_lscript board/\<boardname\>/barebox.ld.S
+@subsection board_lscript board/\<boardname\>/barebox.lds.S
 
 If your board needs a special binary @a barebox layout, you can provide a local
 board linker script file. This will replace the generic one provided by your

-- 
Matthias Kaehlcke
Embedded Linux Developer
Barcelona

     Nationalism is an infantile disease. It is the measles of mankind
                         (Albert Einstein)
                                                                 .''`.
    using free software / Debian GNU/Linux | http://debian.org  : :'  :
                                                                `. `'`
gpg --keyserver pgp.mit.edu --recv-keys 47D8E5D4                  `-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
