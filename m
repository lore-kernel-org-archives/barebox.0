Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x233.google.com ([2a00:1450:400c:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTWWu-0006Us-K7
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 14:13:38 +0000
Received: by wesw62 with SMTP id w62so53204803wes.9
 for <barebox@lists.infradead.org>; Thu, 05 Mar 2015 06:13:13 -0800 (PST)
Date: Thu, 5 Mar 2015 15:13:08 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20150305141301.GA13150@omega>
References: <CAJF1zjagUjQck+QYHxsbPFzQkmQ4io92zmapU2roLe01hnvqPA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJF1zjagUjQck+QYHxsbPFzQkmQ4io92zmapU2roLe01hnvqPA@mail.gmail.com>
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
Subject: Re: D-Link DNS-320 build
To: Alexander <barebox@abatapa.ru>
Cc: barebox@lists.infradead.org

Hi,

On Thu, Mar 05, 2015 at 03:45:13PM +0300, Alexander wrote:
> Hello!
> 
> I am trying build barebox for D-Link DNS-320 NAS.
> 
> There is a file dts/src/arm/kirkwood-dns320.dts
> However, there is no instructions how to build for this model.
> Anyone has such experience?
> 

I ported successful the DNS-325 one year ago. See [0].

Maybe you can try to start your work on it and port DNS-320 and DNS-325.
For DNS-325 this should only a replacement of the dts file.

Since them many patches found there way into barebox e.g.: kirkwood
devicetree support, NAND, also a new barebox documentation system.
You need some way to adapt my patch there, but it's a good start.

I also used the kwboot utility to boot via uart.

- Alex

[0] http://lists.infradead.org/pipermail/barebox/2014-June/019500.html

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
