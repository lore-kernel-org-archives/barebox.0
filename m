Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo69.mail-out.ovh.net ([46.105.56.78])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YOkq0-0007GW-Kk
 for barebox@lists.infradead.org; Fri, 20 Feb 2015 10:29:37 +0000
Received: from mail409.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo69.mail-out.ovh.net (Postfix) with SMTP id DEC5DFF910E
 for <barebox@lists.infradead.org>; Fri, 20 Feb 2015 11:29:13 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20150219212249.GG12209@pengutronix.de>
Date: Fri, 20 Feb 2015 18:28:57 +0800
Message-Id: <EB3C63E0-E089-4C47-B54A-58A929F272B3@jcrosoft.com>
References: <1424378307-23907-1-git-send-email-m.grzeschik@pengutronix.de>
 <20150219212249.GG12209@pengutronix.de>
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
Subject: Re: [PATCH] ARM i.MX: Add I2C EEPROM
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


> On Feb 20, 2015, at 5:22 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> On Thu, Feb 19, 2015 at 09:38:27PM +0100, Michael Grzeschik wrote:
>> From: Jan Luebbe <jlu@pengutronix.de>
>> 
>> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
>> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
>> ---
>> arch/arm/boards/guf-vincell/board.c | 3 +++
>> 1 file changed, 3 insertions(+)
>> 
>> diff --git a/arch/arm/boards/guf-vincell/board.c b/arch/arm/boards/guf-vincell/board.c
>> index bafde2c..515f178 100644
>> --- a/arch/arm/boards/guf-vincell/board.c
>> +++ b/arch/arm/boards/guf-vincell/board.c
>> @@ -263,6 +263,9 @@ static struct i2c_board_info i2c_devices[] = {
>> 	{
>> 		I2C_BOARD_INFO("da9053", 0x48),
>> 	},
>> +	{
>> +		I2C_BOARD_INFO("24c32", 0x50),
>> +	},
> 
> Are you sure this REALLY works properly without converting the board to
> device tree support? ;)

read will work but write will need pdata info

Best Regards,
J.
> 
> Sascha
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
