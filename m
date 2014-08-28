Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XMuTe-0001V6-92
 for barebox@lists.infradead.org; Thu, 28 Aug 2014 07:50:39 +0000
Message-ID: <1409212205.4914.6.camel@lws-gamez.phytec.de>
From: Teresa Gamez <t.gamez@phytec.de>
Date: Thu, 28 Aug 2014 09:50:05 +0200
Mime-Version: 1.0
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
Subject: [BUG] readline history
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,

I noticed a bug on the latest master.
When no history is present and I hit the arrow up key, I get:

unable to handle NULL pointer dereference at address 0x00000001
pc : [<9fe243ba>]    lr : [<9fe268cf>]
sp : 9ffff9d0  ip : 00000016  fp : 00000002
r10: 00000001  r9 : 9fe549dc  r8 : 9fe65d08
r7 : 00000400  r6 : 00000001  r5 : 00000000  r4 : 9fe66258
r3 : 00000000  r2 : 00000000  r1 : 00000001  r0 : 9fe66258
Flags: nZCv  IRQs off  FIQs on  Mode SVC_32
[<9fe243ba>] (strcpy+0xa/0xe) from [<9fe268cf>] (readline+0x363/0x4e0)
[<9fe268cf>] (readline+0x363/0x4e0) from [<9fe05469>] (file_get
+0x49/0x110)

I could bisect it to this commit:


ada160a34a1ec8421d5bb7b9dd746294668a5130 is the first bad commit
commit ada160a34a1ec8421d5bb7b9dd746294668a5130
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Tue Jul 29 11:54:26 2014 +0200

    readline: reimplement history functions
    
...

Regards,
Teresa




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
