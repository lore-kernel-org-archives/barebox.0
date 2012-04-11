Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SHqoQ-0000nx-9A
 for barebox@lists.infradead.org; Wed, 11 Apr 2012 06:13:52 +0000
Date: Wed, 11 Apr 2012 09:13:11 +0300
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20120411061311.GA2529@tarshish>
References: <1334122954-19623-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1334122954-19623-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] arm: add Android boot image support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Magnus Damm <magnus.damm@gmail.com>

Hi Jean-Christophe,

On Wed, Apr 11, 2012 at 07:42:34AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> The Android Image contains 3 components and params
> 
>  - kernel
>  - initrd
>  - second stage (optional)
> 
>  - tags addr
>  - bootargs
> 
> In fast boot the initrd is mandatory, in barebox we are less restrictive
> use the initrd only if present
> 
> add to env params:
> image_noverwrite_bootargs

s/image/aimage/

> 	Disable overwrite of the bootargs with the one present in aimage
> 
> aimage_noverwrite_tags
> 	Disable overwrite of the tags addr with the one present in aimage
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> Cc: Magnus Damm <magnus.damm@gmail.com>

baruch

-- 
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
