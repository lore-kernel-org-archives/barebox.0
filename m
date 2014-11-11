Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qa0-x22d.google.com ([2607:f8b0:400d:c00::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XoIo1-0002Xw-39
 for barebox@lists.infradead.org; Tue, 11 Nov 2014 21:16:53 +0000
Received: by mail-qa0-f45.google.com with SMTP id dc16so7601598qab.32
 for <barebox@lists.infradead.org>; Tue, 11 Nov 2014 13:16:31 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20141111140619.GX30369@pengutronix.de>
References: <1415641570-19399-1-git-send-email-andrew.smirnov@gmail.com>
 <20141111140619.GX30369@pengutronix.de>
Date: Tue, 11 Nov 2014 13:16:31 -0800
Message-ID: <CAHQ1cqGviszhm2zMwLTcHWQ_BXatJug1RPs7WkrJ6dt+oDER8g@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] ARM: i.MX6 Phytec phyFLEX: Fix
 imx6_bbu_nand_register_handler usage
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, cconley@phytec.com

Sure. Will post the patch in a separate thread.

On Tue, Nov 11, 2014 at 6:06 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Mon, Nov 10, 2014 at 09:46:10AM -0800, Andrey Smirnov wrote:
>> imx6_bbu_nand_register_handler is not availible if
>> CONFIG_BAREBOX_UPDATE_IMX6_NAND is not selected. Fix this by wrapping
>> it's usage in preprocessor statements.
>>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>  arch/arm/boards/phytec-phyflex-imx6/board.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm/boards/phytec-phyflex-imx6/board.c b/arch/arm/boards/phytec-phyflex-imx6/board.c
>> index 09a5c79..9acbd7a 100644
>> --- a/arch/arm/boards/phytec-phyflex-imx6/board.c
>> +++ b/arch/arm/boards/phytec-phyflex-imx6/board.c
>> @@ -81,8 +81,9 @@ static int phytec_pfla02_init(void)
>>
>>       phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK,
>>                                          ksz9031rn_phy_fixup);
>> -
>> +#ifdef CONFIG_BAREBOX_UPDATE_IMX6_NAND
>>       imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
>> +#endif
>
> the bbu handler register functions normally have a static inline wrapper
> if disabled. imx6_bbu_nand_register_handler is a static inline when
> CONFIG_BAREBOX_UPDATE is disabled. Maybe this should rather be under
> CONFIG_BAREBOX_UPDATE_IMX6_NAND instead. Could you update the patch
> accordingly?
>
> Sascha
>
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
