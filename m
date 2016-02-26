Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from qmail.e-mind.com ([188.94.192.39])
 by bombadil.infradead.org with smtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aZElW-0000Gh-BN
 for barebox@lists.infradead.org; Fri, 26 Feb 2016 09:32:51 +0000
References: <56CF068C.4060901@eurek.it>
 <CAHQ1cqFoYAWjAZQrjNS6S-rpePGNM7oM=6K28aOnKciJMBHHOg@mail.gmail.com>
From: gianluca <gianlucarenzi@eurek.it>
Message-ID: <56D01BA9.9080707@eurek.it>
Date: Fri, 26 Feb 2016 10:32:25 +0100
MIME-Version: 1.0
In-Reply-To: <CAHQ1cqFoYAWjAZQrjNS6S-rpePGNM7oM=6K28aOnKciJMBHHOg@mail.gmail.com>
Content-Type: multipart/mixed; boundary="------------010805080104000709090007"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: iMX6Q First boot
To: barebox@lists.infradead.org

This is a multi-part message in MIME format.
--------------010805080104000709090007
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/25/2016 08:27 PM, Andrey Smirnov wrote:
> On Thu, Feb 25, 2016 at 5:50 AM, gianluca <gianlucarenzi@eurek.it> wrote:
>> Hello list,
>> I am trying to bootup my custom designed board (actually a rev.0, but I know
>> it will need a rev.1 ASAP ;-).
>>
>> I started with the latest (2016.02) barebox version, adding my board to the
>> Kconfig & Makefile stuff, copying the udoo stuff to the
>> arch/arm/boards/eurek-ek360 (as the board name is EK360) and cut-off any
>> unneeded initialization.
>>
>> I am using imx_v7_defconfig as a starting point for configuration.
>>
>> I kept the device tree file as short as possible, keeping only the model,
>> memory, gpio-pinmux for uart (debug) and the uart3 configurator.
>>
>> In attachment there are the board.c, the lowlevel.c and the device-tree
>> file.
>
> gianluca, the information you included is somewhat incomplete.
> Attached file is a .dsti file (include file, not a standalone .dts)
> which references phandles not defined in the file itself, so it seems
> like there should be more to it.
>

The .dts file is almost empty. In attachment there is such a file. ;-)


> However there are a couple of things to note about the code you included:
>
>   - The device tree code that you provided doesn't have
>      chosen {
>            linux,stdout-path = <something>;
>       };
>       which means that BB's console subsystem doesn't have a assigned
> "stdout" device, which might explain why you don't see the output
>

Even if it says: linux,stdout-path = .... ??? I suppose it was good only 
for Linux Kernel.
My goal is to have ONLY one device-tree for Linux & Barebox. It is 
simpler to maintain, and if I add something to linux, it is 
automagically added to barebox too (if barebox drivers exists...)


>   - Udoo board, that you used as a reference for your implementation
> actually doesn't "support" for CONFIG_DEBUG_LL, and what I mean by
> this is that there's no code in lowlevel.c that would set-up pinmux or
> UART blocks correctly (see phytech-som-imx6/lowlevel.c for example),
> so the  fact that you were able to see any output would mean that
> either default in all involved registers are good for your board or
> that settings were set during some other initialization process (most
> likely when UART driver was probed and pinmux configured as a part of
> it)
>

I didn't kown it. I will try ASAP.


> Hope this helps,
>
I hope too... ;-)


-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

--------------010805080104000709090007
Content-Type: text/plain; charset=UTF-8;
 name="imx6q-eurek-ek360.dts"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="imx6q-eurek-ek360.dts"

LyoKICogQ29weXJpZ2h0IDIwMTQgUmFwaGHDq2wgUG9nZ2kKICogQ29weXJpZ2h0IDIwMTIg
RnJlZXNjYWxlIFNlbWljb25kdWN0b3IsIEluYy4KICogQ29weXJpZ2h0IDIwMTEgTGluYXJv
IEx0ZC4KICoKICogVGhlIGNvZGUgY29udGFpbmVkIGhlcmVpbiBpcyBsaWNlbnNlZCB1bmRl
ciB0aGUgR05VIEdlbmVyYWwgUHVibGljCiAqIExpY2Vuc2UuIFlvdSBtYXkgb2J0YWluIGEg
Y29weSBvZiB0aGUgR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UKICogVmVyc2lvbiAyIG9y
IGxhdGVyIGF0IHRoZSBmb2xsb3dpbmcgbG9jYXRpb25zOgogKgogKiBodHRwOi8vd3d3Lm9w
ZW5zb3VyY2Uub3JnL2xpY2Vuc2VzL2dwbC1saWNlbnNlLmh0bWwKICogaHR0cDovL3d3dy5n
bnUub3JnL2NvcHlsZWZ0L2dwbC5odG1sCiAqLwoKL2R0cy12MS87CgojaW5jbHVkZSA8YXJt
L2lteDZxLmR0c2k+CiNpbmNsdWRlICJpbXg2cS5kdHNpIgojaW5jbHVkZSAiaW14NnEtZXVy
ZWstZWszNjAuZHRzaSIKCi8gewogICAgICAgbW9kZWwgPSAiRUszNjAgRXVyZWsgaS5NWDYg
UXVhZCI7CiAgICAgICBjb21wYXRpYmxlID0gImV1cmVrLGVrMzYwIiwgImZzbCxpbXg2cSI7
Cn07Cg==
--------------010805080104000709090007
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--------------010805080104000709090007--
