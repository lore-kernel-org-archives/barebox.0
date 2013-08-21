Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ve0-x236.google.com ([2607:f8b0:400c:c01::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VCDQV-0002Xg-Fo
 for barebox@lists.infradead.org; Wed, 21 Aug 2013 18:46:40 +0000
Received: by mail-ve0-f182.google.com with SMTP id m1so718685ves.27
 for <barebox@lists.infradead.org>; Wed, 21 Aug 2013 11:46:18 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 21 Aug 2013 14:46:17 -0400
Message-ID: <CAJyuEedsHb0h84AKDq_Mttxu_ZG1u+gG94BpzioHyO=JdHiD=A@mail.gmail.com>
From: Michael Burkey <mdburkey@gmail.com>
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
Subject: Porting BareBox to Variscite iMX6 SOM
To: barebox@lists.infradead.org

Sascha,

You can ignore part of my last post -- I found the
"imx6q-phytec-pbab01" on github (it looks like a lot of the things I
am needing and working on are right on the edge of development where
you are working as well).

I also noticed some posts in the mailing list that you made last month
regarding adding gpmi-nand support for iMX6 (or at least some wrappers
for it). Has the actual gpmi-nand support been completed and
integrated (or will the existing mxs-nand driver from the i.MX23/28
work as-is)?


I've also been doing a lot of reading on devicetree and what it
entails to migrate in that direction (everything I had been doing
previously had been iMX35 based and started from the older Phytec
BSP's, so I hadn't really looked at how devicetree worked). I may have
some more questions on this going forward.

Thanks again,
Michael Burkey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
