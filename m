Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hlWs1-0005s3-IO
 for barebox@lists.infradead.org; Thu, 11 Jul 2019 11:04:14 +0000
References: <1562758050-447264-1-git-send-email-s.riedmueller@phytec.de>
 <20190711070147.weq5bwqh4adw6sfe@pengutronix.de>
From: =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <cdbaf9d5-940e-db3a-3df9-db3bba5a3ed4@phytec.de>
Date: Thu, 11 Jul 2019 13:04:12 +0200
MIME-Version: 1.0
In-Reply-To: <20190711070147.weq5bwqh4adw6sfe@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH] mtd: ubi: Max out default wear-leveling threshold
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On 11.07.19 09:01, Sascha Hauer wrote:
> On Wed, Jul 10, 2019 at 01:27:30PM +0200, Stefan Riedmueller wrote:
>> Due to the recursive ubi_thread implementation in the barebox, a large
>> amount of wear-leveling can lead to a stack overflow.
>>
>> This was observed during extensive ubi stress tests with the linux
>> kernel and periodic power cycles. We found that if the wear-leveling
>> threshold is exceeded and a large amount of erase blocks need
>> wear-leveling the stack can overflow.
>>
>> The hardware used to observe this was a phyCORE-i.MX 6 with 1GB NAND flash.
>>
>> As the kernel is perfectly capable of handling wear-leveling we can
>> increase the wear-leveling threshold in the barebox to leave it to the
>> kernel. To minimize the chance of wear-leveling in the barebox max out
>> the threshold.
> 
> I can follow the reasoning and it seems indeed better and more safe to
> leave the wearleveling to the Kernel. Given that, can't we just disable
> wear leveling completely in barebox?

I think it would be best to disable it or at least improve it. But since 
wear-leveling is not an isolated task but involved in more functionalities I 
couldn't find an easy way to disable it in a quick way. That is why I went 
with the threshold enlargement to have at least a quick fix.

But I agree that at some point in the future the root cause should be 
handled and not just the symptom.

Stefan

> 
> Sascha
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
