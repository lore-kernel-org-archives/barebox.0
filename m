Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gy0-f177.google.com ([209.85.160.177])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OlfUT-0002wy-1R
	for barebox@lists.infradead.org; Wed, 18 Aug 2010 10:03:29 +0000
Received: by gyf2 with SMTP id 2so142320gyf.36
	for <barebox@lists.infradead.org>; Wed, 18 Aug 2010 03:03:22 -0700 (PDT)
Message-ID: <4C6BAFE3.8080805@gmail.com>
Date: Wed, 18 Aug 2010 05:03:15 -0500
From: Nishanth Menon <menon.nishanth@gmail.com>
MIME-Version: 1.0
References: <1282035337-25094-1-git-send-email-m.grzeschik@pengutronix.de>
	<4C6A6709.9080107@gmail.com>
	<20100818064233.GY27749@pengutronix.de>
In-Reply-To: <20100818064233.GY27749@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH|RFC] beagle: make nand ecc command based
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08/18/2010 01:42 AM, Sascha Hauer wrote:
> On Tue, Aug 17, 2010 at 05:40:09AM -0500, Nishanth Menon wrote:
>> On 08/17/2010 03:55 AM, Michael Grzeschik wrote:
>>> Signed-off-by: Michael Grzeschik<m.grzeschik@pengutronix.de>
>>> ---
>>> This will only work once and bring the nand chip into a undefined state
>>> after a second call. Any ideas for doing this save?
>> looking at the gpmc logic, it does a reset in gpmc_cs_config by
>> disabling and re-enabling it ->  so my guess is:
>> a) in the selection of ecc logic
>> b) reset of statemachines in mtd layers
>> c) nand chip not being reset from it's previous state (resetting the
>> controller does not mean nand chip is reset) (if i recollect sometime
>> back mtd used to do a 0xff and reset)..
>>
>>
>> personally, IMHO using s/w ecc has not much benefit other than being
>> "legacy enabled"
>
> It really seems odd to me that the omap internal ROM code expects hw
> ecc while xloader and kernel expect hw ecc. This way we always need
> two different ecc algorithms in place which is really inconvenient and
> hard for users to get it right.


I agree, but there has been a lot of history behind how this came to 
happen. there is still discussion in linux-omap in getting kernel's mtd 
driver to sanely handle the ecc strategy selectable by the board.

Regards,
Nishanth Menon


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
