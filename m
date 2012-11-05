Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moutng.kundenserver.de ([212.227.17.10])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TVKXQ-0002ne-Vz
 for barebox@lists.infradead.org; Mon, 05 Nov 2012 11:08:18 +0000
Message-ID: <50979E1A.2000707@cmotion.eu>
Date: Mon, 05 Nov 2012 12:08:10 +0100
From: Christian Kapeller <christian.kapeller@cmotion.eu>
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
Subject: TX53: Not Bootable from next tree
To: barebox@lists.infradead.org

Hi,

I've just flashed barebox from the next tree onto a TX53-8030 module,
and have to report, that the board won't boot.

Currently I've tried to run it with MMU off and setting the text-base
to 0x71000000, with no positive results.

I'll do further investigation, but meanwhile does anyone have barebox
running on a TX53 board?

Cheers,
Christian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
