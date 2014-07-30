Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22b.google.com ([2a00:1450:400c:c03::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCNW9-00088z-9y
 for barebox@lists.infradead.org; Wed, 30 Jul 2014 06:37:42 +0000
Received: by mail-we0-f171.google.com with SMTP id p10so683995wes.30
 for <barebox@lists.infradead.org>; Tue, 29 Jul 2014 23:37:18 -0700 (PDT)
Message-ID: <53D8929A.8070400@gmail.com>
Date: Wed, 30 Jul 2014 08:37:14 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1406638037-23026-1-git-send-email-antonynpavlov@gmail.com>
 <20140730063504.GK23235@pengutronix.de>
In-Reply-To: <20140730063504.GK23235@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 0/2] i2c: add Marvell 64xxx driver;
 fix Makefile indentation
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 30.07.2014 08:35, Sascha Hauer wrote:
> I'm fine with the driver. Will you ack it once your fine with it aswell?

Yeah, let me give it a shot on the most obvious platforms again.
Will send my Acked-by later today.

Sebastian

> On Tue, Jul 29, 2014 at 04:47:15PM +0400, Antony Pavlov wrote:
>> Changes since v2:
>>
>>    * drop "allwinner,sun*" stuff;
>>    * make macros shorter (drop MV64XXX_I2C_ prefix);
>>    * rework mv64xxx_write/mv64xxx_read stuff;
>>    * drop mv64xxx_i2c_execute_msg().
>>    * drop unused variables.
>>
>> Antony Pavlov (2):
>>    i2c: add Marvell 64xxx driver
>>    i2c: busses/Makefile: fix indentation
>>
>>   drivers/i2c/busses/Kconfig       |   8 +
>>   drivers/i2c/busses/Makefile      |   5 +-
>>   drivers/i2c/busses/i2c-mv64xxx.c | 647 +++++++++++++++++++++++++++++++++++++++
>>   3 files changed, 658 insertions(+), 2 deletions(-)
>>   create mode 100644 drivers/i2c/busses/i2c-mv64xxx.c
>>
>> --
>> 2.0.1
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
