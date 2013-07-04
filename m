Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f42.google.com ([209.85.214.42])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uue7p-0000h3-Tb
 for barebox@lists.infradead.org; Thu, 04 Jul 2013 07:38:46 +0000
Received: by mail-bk0-f42.google.com with SMTP id jk13so457890bkc.15
 for <barebox@lists.infradead.org>; Thu, 04 Jul 2013 00:38:17 -0700 (PDT)
Message-ID: <51D52663.5020004@gmail.com>
Date: Thu, 04 Jul 2013 09:38:11 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1372443947-12599-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1372789849-12194-11-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130704073240.GT516@pengutronix.de>
In-Reply-To: <20130704073240.GT516@pengutronix.de>
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
Subject: Re: [PATCH v2 10/10] ARM: mvebu: import DT files for Dove SoC and
 SolidRun CuBox
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 07/04/13 09:32, Sascha Hauer wrote:
> On Tue, Jul 02, 2013 at 08:30:49PM +0200, Sebastian Hesselbarth wrote:
>> This imports dove.dtsi and dove-cubox.dts from Linux kernel with timer
>> node added.
>>
>> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
>
> Applied with two small changes
>
> First I added dove-cubox.dtb to the Makefile
>
>> diff --git a/arch/arm/dts/dove-cubox.dts b/arch/arm/dts/dove-cubox.dts
>> +
>> +	chosen {
>> +		bootargs = "console=ttyS0,115200n8 earlyprintk";
>> +		linux,stdoutpath = "/soc@f1000000/serial@12000";
>> +	};
>
> Then I learned something about dtc. The above can be written as
>
> 	linux,stdoutpath = &uart0;
>
> Which expands to the nodes full path.

Great, I was going to think about adding linux,stdoutpath-phandle
just because of the freaking long name above.

Also, yesterday I realized that I updated solidrun_cubox_defconfig
with CONFIG_CONSOLE_ACTIVATE_NONE=y. Leaves it with no console.
I will retest with your changes but maybe I haven't yet fully
understood the dependencies here.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
