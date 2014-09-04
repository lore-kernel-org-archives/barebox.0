Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.246]
 helo=DVREDG02.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XPMBR-0008Ek-2V
 for barebox@lists.infradead.org; Thu, 04 Sep 2014 01:49:57 +0000
Message-ID: <5407C4D1.5050500@atmel.com>
Date: Thu, 4 Sep 2014 09:48:01 +0800
From: Bo Shen <voice.shen@atmel.com>
MIME-Version: 1.0
References: <1409795009-25395-1-git-send-email-voice.shen@atmel.com>
In-Reply-To: <1409795009-25395-1-git-send-email-voice.shen@atmel.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Makefile: remove never reached code
To: barebox@lists.infradead.org

Hi,
   Sorry for this noise, it goes wrong to the barebox ML.
   Please ignore it.

On 09/04/2014 09:43 AM, Bo Shen wrote:
> Signed-off-by: Bo Shen <voice.shen@atmel.com>
> ---
>   Makefile | 8 --------
>   1 file changed, 8 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index 5cd0369..7a7ad38 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -180,14 +180,6 @@ endif
>   BOOT_NAME=$(BOARDNAME)-$(PROJECT)$(CARD_SUFFIX)boot-$(TARGET_NAME)$(BLOB)-$(VERSION)$(REV)
>   AT91BOOTSTRAP:=$(BINDIR)/$(BOOT_NAME).bin
>
> -ifeq ($(IMAGE),)
> -IMAGE=$(BOOT_NAME).bin
> -endif
> -
> -ifeq ($(SYMLINK),)
> -SYMLINK=at91bootstrap.bin
> -endif
> -
>   COBJS-y:= $(TOPDIR)/main.o $(TOPDIR)/board/$(BOARDNAME)/$(BOARDNAME).o
>   SOBJS-y:= $(TOPDIR)/crt0_gnu.o
>
>

Best Regards,
Bo Shen

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
