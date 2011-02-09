Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vx0-f177.google.com ([209.85.220.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PnCh2-00047v-18
	for barebox@lists.infradead.org; Wed, 09 Feb 2011 16:15:01 +0000
Received: by vxd2 with SMTP id 2so143417vxd.36
	for <barebox@lists.infradead.org>; Wed, 09 Feb 2011 08:14:58 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20110209154309.GO9041@pengutronix.de>
References: <AANLkTikbxuCpCj7Et3V20vBwBdkmHXFMmtxy+nhYu_LB@mail.gmail.com>
	<20110209154309.GO9041@pengutronix.de>
Date: Wed, 9 Feb 2011 17:14:58 +0100
Message-ID: <AANLkTimS2eJ1u5mH3Bfqq3OrLSQ+UtswP4A-egg1qx-O@mail.gmail.com>
From: Mickael Chazaux <mickael.chazaux@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Compile failure (as of fri Feb 4 13:50:49 2011 +0100,
	c5dd4c4d0a6a6)
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

2011/2/9 Sascha Hauer <s.hauer@pengutronix.de>:
> Hi Mickael,
>
> On Wed, Feb 09, 2011 at 04:26:50PM +0100, Mickael Chazaux wrote:
>> Hi,
>>
>> ARCH=arm
>> CROSS_COMPILE=/home/mc/OE/tmp/sysroots/i686-linux/usr/armv5te/bin/arm-angstrom-linux-gnueabi-
>>
>> git clone, make menuconfig, not touching anything, exit, save, make
>> gives this [1]. Seems the buildsystem tries to cross-compile stuff
>> under scripts/.
>
> This happens when CONFIG_DEFAULT_ENVIRONMENT=y is combined with
> CONFIG_DEFAULT_ENVIRONMENT_PATH="". This configuration is not
> particularly useful but of course should not break the build. I haven't
> looked deeply into it and currently do not have a fix.
> For now disable CONFIG_DEFAULT_ENVIRONMENT or specify a (relative) path
> to your environment directory in CONFIG_DEFAULT_ENVIRONMENT_PATH
>
Thank you, it helps.

Mickael

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
