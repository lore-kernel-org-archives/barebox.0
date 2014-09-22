Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.245]
 helo=DVREDG01.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XVvsC-0000ij-GI
 for barebox@lists.infradead.org; Mon, 22 Sep 2014 05:09:16 +0000
Message-ID: <541FAEE1.1000706@atmel.com>
Date: Mon, 22 Sep 2014 13:08:49 +0800
From: Bo Shen <voice.shen@atmel.com>
MIME-Version: 1.0
References: <1410949295-30296-1-git-send-email-voice.shen@atmel.com>
 <1410949295-30296-6-git-send-email-voice.shen@atmel.com>
 <20140922045913.GL4992@pengutronix.de>
In-Reply-To: <20140922045913.GL4992@pengutronix.de>
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
Subject: Re: [PATCH 5/9] net: macb: using default value for FBLDO
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On 09/22/2014 12:59 PM, Sascha Hauer wrote:
> On Wed, Sep 17, 2014 at 06:21:31PM +0800, Bo Shen wrote:
>> Signed-off-by: Bo Shen <voice.shen@atmel.com>
>> ---
>>
>>   drivers/net/macb.c | 1 -
>>   1 file changed, 1 deletion(-)
>>
>> diff --git a/drivers/net/macb.c b/drivers/net/macb.c
>> index 12a2a3c..ef49f74 100644
>> --- a/drivers/net/macb.c
>> +++ b/drivers/net/macb.c
>> @@ -304,7 +304,6 @@ static void macb_configure_dma(struct macb_device *bp)
>>   	if (macb_is_gem(bp)) {
>>   		dmacfg = gem_readl(bp, DMACFG) & ~GEM_BF(RXBS, -1L);
>>   		dmacfg |= GEM_BF(RXBS, bp->rx_buffer_size / RX_BUFFER_MULTIPLE);
>> -		dmacfg |= GEM_BF(FBLDO, 16);
>
> Why is this done? Does this still work on other SoCs?

Yes, as this hard code which cause the sama5d4 Ethernet won't work. So, 
I remove this hard code and use the register default value.

> Sascha
>

Best Regards,
Bo Shen


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
