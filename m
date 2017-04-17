Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from gandharva.secretlabs.de ([5.9.72.18])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1czzKE-00076W-L6
 for barebox@lists.infradead.org; Mon, 17 Apr 2017 05:35:49 +0000
Received: from [10.0.1.2] (ip127-36-210-87.adsl2.static.versatel.nl
 [87.210.36.127])
 by gandharva.secretlabs.de (Postfix) with ESMTPSA id 2B5C1ACF18
 for <barebox@lists.infradead.org>; Mon, 17 Apr 2017 05:35:20 +0000 (UTC)
From: Holger Freyther <holger@moiji-mobile.com>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Mon, 17 Apr 2017 07:35:19 +0200
References: <CCE0355C-0078-435E-A307-9D64235CC014@moiji-mobile.com>
In-Reply-To: <CCE0355C-0078-435E-A307-9D64235CC014@moiji-mobile.com>
Message-Id: <2CBFB5C4-AB2B-448E-9127-DEBE0B12E168@moiji-mobile.com>
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
Subject: Re: Linking issue with ld.bfd 2.28.0.20170307
To: barebox@lists.infradead.org


> On 30. Mar 2017, at 20:49, Holger Freyther <holger@moiji-mobile.com> wrote:
> 
> Hi,

Hi!

> I am rebuilding the bootloader with gcc6 and the above version
> of binutils and it is failing to link with .bfd but is working
> with .gold.
> 
> Is this known? Is anyone else seeing this issue? And no I did
> not try linking with -N and I have no idea what ld thinks is
> the program headers here.

my steps to reproduce this with Yocto's gcc-6.3 and ld.bfd
2.28.0.20170307 are the following. CROSS_COMPILE points into
the sysroot of a build on poky master.

git clone --branch=hfreyther/v2017.03-rebase git://git.sysmocom.de/barebox
cd barebox/
wget -O .config "http://git.sysmocom.de/poky/meta-sysmocom-bsp/plain/recipes-bsp/barebox/barebox-sysmobts/defconfig?id=39afcd35ae40b8468868f1e942706dec11e03961"
make ARCH=arm


.../arm-poky-linux-gnueabi-ld: .tmp_barebox1: Not enough room for program headers, try linking with -N
.../arm-poky-linux-gnueabi-ld: final link failed: Bad value
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
