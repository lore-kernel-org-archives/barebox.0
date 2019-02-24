Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gxtBe-0007Sj-9J
 for barebox@lists.infradead.org; Sun, 24 Feb 2019 12:47:19 +0000
Date: Sun, 24 Feb 2019 13:47:15 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190224124715.GC19669@ravnborg.org>
References: <20190221192411.8395-1-christian.hemp@posteo.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190221192411.8395-1-christian.hemp@posteo.de>
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
Subject: Re: [PATCH v2] ARM: phyCORE-i.MX8M SOM support
To: Christian Hemp <christian.hemp@posteo.de>
Cc: barebox@lists.infradead.org

Hi Christian.

On Thu, Feb 21, 2019 at 08:24:11PM +0100, Christian Hemp wrote:
> The phyCORE-i.MX8M aka PCL-066 is a SoM containing a i.MX8M SoC.
> 
> phyCORE-i.MX8M:
>  - 1GB LPDDR4 RAM
>  - eMMC
>  - microSD
>  - Ethernet
> 
> Signed-off-by: Christian Hemp <christian.hemp@posteo.de>

I browsed the patch - and everything looked good.
This is code that I am not familiar so it cannot count
for a review - but you may add my:
Acked-by: Sam Ravnborg <sam@ravnborg.org>

(I do not like all these random numbers, but I learned that
this is just the way it is.
And my OCD shall accept missing spaces after ',' as this
is auto generated).

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
