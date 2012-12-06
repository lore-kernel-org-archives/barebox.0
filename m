Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgWK5-0007DB-TW
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 07:56:46 +0000
Received: by mail-pb0-f49.google.com with SMTP id un15so3820317pbc.36
 for <barebox@lists.infradead.org>; Wed, 05 Dec 2012 23:56:42 -0800 (PST)
From: Yi Qingliang <niqingliang2003@gmail.com>
Date: Thu, 06 Dec 2012 15:55:23 +0000
Message-ID: <10036346.7roAWQEoPH@yiqingliang-pc>
MIME-Version: 1.0
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
Subject: about the dm9000 in mini2440
To: barebox@lists.infradead.org

the address of dm9000 is 0x28000000, it should be cs5, but in function 
"mini2440_devices_init", it set the cs4 instead, why??


Yi Qingliang
Nanjing Jilong




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
