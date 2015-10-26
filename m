Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x233.google.com ([2607:f8b0:400e:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZqiSn-0002Wg-Lg
 for barebox@lists.infradead.org; Mon, 26 Oct 2015 14:09:30 +0000
Received: by pasz6 with SMTP id z6so189679785pas.2
 for <barebox@lists.infradead.org>; Mon, 26 Oct 2015 07:09:09 -0700 (PDT)
References: <1445643280-11515-1-git-send-email-eric@nelint.com>
 <20151026065450.GT14476@pengutronix.de>
From: Eric Nelson <eric@nelint.com>
Message-ID: <562E3403.1020305@nelint.com>
Date: Mon, 26 Oct 2015 07:09:07 -0700
MIME-Version: 1.0
In-Reply-To: <20151026065450.GT14476@pengutronix.de>
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
Subject: Re: [PATCH] imx6-mmdc: restore RALAT/WALAT in MMDC0, not MMDC1
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On 10/25/2015 11:54 PM, Sascha Hauer wrote:
> On Fri, Oct 23, 2015 at 04:34:40PM -0700, Eric Nelson wrote:
>> Signed-off-by: Eric Nelson <eric@nelint.com>
>> ---
>>  arch/arm/mach-imx/imx6-mmdc.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> Applied, thanks
> 
> Sascha
> 
>>
>> diff --git a/arch/arm/mach-imx/imx6-mmdc.c b/arch/arm/mach-imx/imx6-mmdc.c
>> index 40fe0cf..7840c1a 100644
>> --- a/arch/arm/mach-imx/imx6-mmdc.c
>> +++ b/arch/arm/mach-imx/imx6-mmdc.c
>> @@ -474,7 +474,7 @@ int mmdc_do_dqs_calibration(void)
>>  	writel(v, P0_IPS + MAPSR);
>>  
>>  	/* restore MDMISC value (RALAT, WALAT) */
>> -	writel(esdmisc_val, P1_IPS + MDMISC);
>> +	writel(esdmisc_val, P0_IPS + MDMISC);
>>  
>>  	/* clear DQS pull ups */
>>  	v = readl(IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS0) & ~0x7000;
>> -- 
>> 2.6.2
>>
>>
> 

Note that this typo should have had an impact on performance
because RALAT and WALAT for MMDC0 would be left at their
max values.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
