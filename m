Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo4.mail-out.ovh.net ([178.32.98.131]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tlh5b-0006Wj-3v
 for barebox@lists.infradead.org; Thu, 20 Dec 2012 14:27:12 +0000
Received: from mail638.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 86949104E644
 for <barebox@lists.infradead.org>; Thu, 20 Dec 2012 15:35:51 +0100 (CET)
Date: Thu, 20 Dec 2012 15:25:29 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121220142529.GH26483@game.jcrosoft.org>
References: <1356013354-25832-1-git-send-email-t.gamez@phytec.de>
 <1356013354-25832-4-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1356013354-25832-4-git-send-email-t.gamez@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCHv2 3/6] ARM OMAP: Apply RAM device register functions to
 boards
To: Teresa =?iso-8859-1?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On 15:22 Thu 20 Dec     , Teresa G=E1mez wrote:
> Apply RAM and SRAM register functions to all OMAP boards.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
> ---
>  arch/arm/boards/archosg9/board.c          |    2 +-
>  arch/arm/boards/beagle/board.c            |    2 +-
>  arch/arm/boards/beaglebone/board.c        |    2 +-
>  arch/arm/boards/omap343xdsp/board.c       |    2 +-
>  arch/arm/boards/omap3evm/board.c          |    2 +-
>  arch/arm/boards/panda/board.c             |    2 +-
>  arch/arm/boards/pcm049/board.c            |    5 ++---
>  arch/arm/boards/phycard-a-l1/pca-a-l1.c   |    5 ++---
>  arch/arm/boards/phycard-a-xl2/pca-a-xl2.c |    6 +++---
>  9 files changed, 13 insertions(+), 15 deletions(-)
> =

> diff --git a/arch/arm/boards/archosg9/board.c b/arch/arm/boards/archosg9/=
board.c
> index 5f62748..1911c62 100644
> --- a/arch/arm/boards/archosg9/board.c
> +++ b/arch/arm/boards/archosg9/board.c
> @@ -35,7 +35,7 @@ static int archosg9_console_init(void){
>  console_initcall(archosg9_console_init);
>  =

>  static int archosg9_mem_init(void){
> -	arm_add_mem_device("ram0", 0x80000000, SZ_1G);
> +	omap_add_ram0(SZ_1G);
can you detect it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
