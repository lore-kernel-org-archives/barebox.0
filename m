Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo3.mail-out.ovh.net ([87.98.165.232]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Sr7Cw-0002ta-Va
 for barebox@lists.infradead.org; Tue, 17 Jul 2012 12:48:56 +0000
Received: from mail241.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 444D9FF959D
 for <barebox@lists.infradead.org>; Tue, 17 Jul 2012 14:54:15 +0200 (CEST)
Date: Tue, 17 Jul 2012 14:49:25 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120717124925.GA22657@game.jcrosoft.org>
References: <1342524182-15436-1-git-send-email-christian.kapeller@cmotion.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342524182-15436-1-git-send-email-christian.kapeller@cmotion.eu>
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
Subject: Re: [PATCH] arm: support booting of uimages with as barebox payload.
To: Christian Kapeller <christian.kapeller@cmotion.eu>
Cc: barebox@lists.infradead.org

On 13:23 Tue 17 Jul     , Christian Kapeller wrote:
> Packing barebox within an uimage gives us integrity checking.
> 
> Generate the image with:
> ./scripts/mkimage -A arm -O barebox -T firmware -C none -d barebox.bin -a 0xffffffff barebox.uimage
> 
> Signed-off-by: Christian Kapeller <christian.kapeller@cmotion.eu>
> ---
boot it as a linux kernel

it will work

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
