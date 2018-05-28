Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x241.google.com ([2607:f8b0:4001:c0b::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fNMTP-0004QJ-TG
 for barebox@lists.infradead.org; Mon, 28 May 2018 18:02:33 +0000
Received: by mail-it0-x241.google.com with SMTP id c5-v6so27014515itj.1
 for <barebox@lists.infradead.org>; Mon, 28 May 2018 11:02:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180528152311.ojarxshkfb3x2e73@pengutronix.de>
References: <20180526204451.16530-1-andrew.smirnov@gmail.com>
 <20180526204451.16530-30-andrew.smirnov@gmail.com>
 <20180528152311.ojarxshkfb3x2e73@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 28 May 2018 11:02:12 -0700
Message-ID: <CAHQ1cqH9x+h14AjSA=04OgwPv0p6775qZ8Aqe2-hHVpRztP+OA@mail.gmail.com>
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
Subject: Re: [PATCH v2 29/48] Documentation: i.MX: Add missing <soctype>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, May 28, 2018 at 8:23 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Sat, May 26, 2018 at 01:44:32PM -0700, Andrey Smirnov wrote:
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>  Documentation/boards/imx.rst | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
>> index de389456e..196513520 100644
>> --- a/Documentation/boards/imx.rst
>> +++ b/Documentation/boards/imx.rst
>> @@ -59,7 +59,7 @@ options in this file are:
>>  Header:
>>
>>  +----------------+--------------------------------------------------------------+
>> -| soc <soctype>  | soctype can be one of imx35, imx51, imx53, imx6              |
>> +| soc <soctype>  | soctype can be one of imx35, imx51, imx53, imx6, imx7, vf610 |
>>  +----------------+--------------------------------------------------------------+
>
> i.MX8 aswell?
>

Added in 47/48 since it seem like a more appropriate place, do you
want me to move it here?

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
