Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SKH5o-0001Jv-2m
 for barebox@lists.infradead.org; Tue, 17 Apr 2012 22:41:49 +0000
Date: Wed, 18 Apr 2012 00:41:39 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120418004139.4bdc7da1@eb-e6520>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: 800x480 Display broken on i.MX25 with MMU
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

on an i.MX25, it seems that 3100ea14668853aeedae85ec83e3536b59ba7728
broke framebuffer usage with a 800x480 display when MMU is enabled :
about 1/4 of the display (at the bottom) is garbage.

v2011.08.0 : it works fine

v2011.09.0 : it fails

disabling MMU makes it work again in v2011.09.0

then in v2011.09.0 it works with MMU enabled after reverting the
following commits :
43ebdba64a6e1c12fe58aa57e905cfdcef922126
56c379160b9f0b52efcaaefce9adb6121d5865d7
a6c333c7f2dbe49189dd5343da3c921659e88cbf
3100ea14668853aeedae85ec83e3536b59ba7728

So it seems something was broken during MMU rework and I don't yet know
what : Sascha do you have an idea ?

Thanks,
Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
