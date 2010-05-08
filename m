Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vw0-f49.google.com ([209.85.212.49])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1OAYul-00082L-JZ
	for barebox@lists.infradead.org; Sat, 08 May 2010 01:33:13 +0000
Received: by vws4 with SMTP id 4so615183vws.36
	for <barebox@lists.infradead.org>; Fri, 07 May 2010 18:33:09 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Sat,  8 May 2010 12:09:20 +1000
Message-Id: <1273284563-28645-1-git-send-email-marc@cpdesign.com.au>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Revision boot params to kernel for ARM and mx35 3 stack fixes
To: barebox@lists.infradead.org

The mx35 3 stack relies the cpu rev and board rev to be passed via the bootloader.
The first two patches make this happen. 
The third patch fixes the pad selection for the CONTRAST pin. previously it had been set to GPIO1_1 and would trigger endless spurios interrupts on the rev2 board.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
