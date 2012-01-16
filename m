Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from devils.ext.ti.com ([198.47.26.153])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RmkcM-0005TE-Qo
 for barebox@lists.infradead.org; Mon, 16 Jan 2012 11:20:51 +0000
From: "Premi, Sanjeev" <premi@ti.com>
Date: Mon, 16 Jan 2012 11:20:45 +0000
Message-ID: <E28AAFD00EFAA646AE3DF9B89CD24A89317FA9B9@DBDE01.ent.ti.com>
References: <1326552668-8859-1-git-send-email-plagnioj@jcrosoft.com>
 <1326552668-8859-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1326552668-8859-4-git-send-email-plagnioj@jcrosoft.com>
Content-Language: en-US
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
Subject: RE: [PATCH 4/4] omap343xdsp: move to arch/arm/boards/omap343xdsp
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: barebox-bounces@lists.infradead.org 
> [mailto:barebox-bounces@lists.infradead.org] On Behalf Of 
> Jean-Christophe PLAGNIOL-VILLARD
> Sent: Saturday, January 14, 2012 8:21 PM
> To: barebox@lists.infradead.org
> Subject: [PATCH 4/4] omap343xdsp: move to arch/arm/boards/omap343xdsp
> 
> this will allow to create it's own env/config
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD 
> <plagnioj@jcrosoft.com>
> ---
>  arch/arm/Makefile                                  |    2 +-
>  arch/arm/boards/omap/Makefile                      |   23 
> --------------------
>  arch/arm/boards/omap/env/bin/init                  |    1 -
>  arch/arm/boards/omap343xdsp/Makefile               |    1 +
>  .../{omap/board-sdp343x.c => omap343xdsp/board.c}  |    0
>  arch/arm/boards/{omap => omap343xdsp}/config.h     |   22 

I just noticed a small typo while writing the description for
one of the commits for a patch I am about to post.

omap343xdsp should be omap343xsdp
        ^^                    ^^ 

~sanjeev

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
