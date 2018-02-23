Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22c.google.com ([2a00:1450:400c:c09::22c])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ep8Rw-0006tY-5H
 for barebox@lists.infradead.org; Fri, 23 Feb 2018 08:11:26 +0000
Received: by mail-wm0-x22c.google.com with SMTP id h21so3006937wmd.1
 for <barebox@lists.infradead.org>; Fri, 23 Feb 2018 00:11:12 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20180223080402.zhx2klwm7jmmnght@pengutronix.de>
References: <CAGm1_ksaqOepiKg2yRHaH2Bs+fur2ujDQEiDmaAD0HYADxj6Vw@mail.gmail.com>
 <20180223073320.6ubvlzyg76vc72ot@pengutronix.de>
 <CAGm1_ku46ngVkkDQ-Cnt4FCGKgEWjeqmuPT7mA60xw2hq3HT2Q@mail.gmail.com>
 <CAGm1_ktHTY=nv+5iKdr3i+sYX4KoDa2cytCCvGhaK47sP2498g@mail.gmail.com>
 <20180223080402.zhx2klwm7jmmnght@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Fri, 23 Feb 2018 09:10:50 +0100
Message-ID: <CAGm1_ksv+seEXkJfsFhSt5C-Jcfdq19fKHCFdXo-qNxFV-X=wA@mail.gmail.com>
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
Subject: Re: linux.bootargs: export mtdparts from DTS
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On Fri, Feb 23, 2018 at 9:04 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Fri, Feb 23, 2018 at 08:52:35AM +0100, Yegor Yefremov wrote:
>> On Fri, Feb 23, 2018 at 8:39 AM, Yegor Yefremov
>> <yegorslists@googlemail.com> wrote:
>> > On Fri, Feb 23, 2018 at 8:33 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
>> >> Hi Yegor,
>> >>
>> >> On Fri, Feb 23, 2018 at 08:26:56AM +0100, Yegor Yefremov wrote:
>> >>> My board will be configured via DTS file, that contains an MTD
>> >>> partition table [1]. How can it be automatically exported to
>> >>> global.inux.bootargs.mtdparts?
>> >>>
>> >>> [1] https://git.pengutronix.de/cgit/barebox/tree/arch/arm/dts/am335x-baltos-minimal.dts#n217
>> >>
>> >> Why would you want to do that? You are not going to start an ancient
>> >> kernel with ATAG support, are you?
>> >
>> > So far I'm using ancient LTS 3.18.x kernel with this DTS [1] and
>> > packaging it via FIT.
>> >
>> > [1] https://github.com/visionsystemsgmbh/onrisc_br_bsp/blob/master/board/vscom/dts/3.15/onrisc-baltos-ir-5221.dts
>>
>> I've installed dtc and dumped my loaded DTB in Linux:
>>
>>                      nand@0,0 {
>>                                 reg = <0x0 0x0 0x4>;
>>                                 gpmc,we-off-ns = <0x28>;
>>                                 gpmc,oe-on-ns = <0x0>;
>>                                 gpmc,device-nand = "true";
>>                                 gpmc,cycle2cycle-delay-ns = <0x0>;
>>                                 gpmc,wr-access-ns = <0x28>;
>>                                 gpmc,wr-data-mux-bus-ns = <0x0>;
>>                                 gpmc,adv-rd-off-ns = <0x22>;
>>                                 gpmc,oe-off-ns = <0x36>;
>>                                 gpmc,clk-activation-ns = <0x0>;
>>                                 gpmc,wait-on-write = "true";
>>                                 elm_id = <0x42>;
>>                                 ti,nand-ecc-opt = "bch8";
>>                                 gpmc,adv-on-ns = <0x6>;
>>                                 gpmc,adv-wr-off-ns = <0x2c>;
>>                                 ti,nand-xfer-type = "prefetch-polled";
>>                                 gpmc,wait-monitoring-ns = <0x0>;
>>                                 nand-bus-width = <0x8>;
>>                                 gpmc,device-width = <0x1>;
>>                                 gpmc,cs-rd-off-ns = <0x2c>;
>>                                 gpmc,rd-cycle-ns = <0x52>;
>>                                 #address-cells = <0x1>;
>>                                 gpmc,bus-turnaround-ns = <0x0>;
>>                                 gpmc,cs-on-ns = <0x0>;
>>                                 gpmc,we-on-ns = <0x0>;
>>                                 #size-cells = <0x1>;
>>                                 gpmc,wait-on-read = "true";
>>                                 gpmc,wr-cycle-ns = <0x52>;
>>                                 gpmc,access-ns = <0x40>;
>>                                 gpmc,sync-clk-ps = <0x0>;
>>                                 gpmc,cs-wr-off-ns = <0x2c>;
>>
>>                                 partitions {
>>                                         compatible = "fixed-partitions";
>>                                         #addres-cells = <0x1>;
>>                                         #size-cells = <0x1>;
>>
>>                                         partition@260000 {
>>                                                 reg = <0x260000 0xfda0000>;
>>                                                 label = "UBI";
>>                                         };
>>
>>                                         partition@0 {
>>                                                 reg = <0x0 0x20000>;
>>                                                 label = "SPL";
>>                                         };
>>
>>                                         partition@20000 {
>>                                                 reg = <0x20000 0x20000>;
>>                                                 label = "SPL.backup1";
>>                                         };
>>
>>                                         partition@40000 {
>>                                                 reg = <0x40000 0x20000>;
>>                                                 label = "SPL.backup2";
>>                                         };
>>
>>                                         partition@60000 {
>>                                                 reg = <0x60000 0x20000>;
>>                                                 label = "SPL.backup3";
>>                                         };
>>
>>                                         partition@80000 {
>>                                                 reg = <0x80000 0x1e0000>;
>>                                                 label = "u-boot";
>>                                         };
>>                                 };
>>                         };
>>
>> Somehow UBI partition is now the first partition and thus other
>> partitions were not parsed. Cat /proc/mtd says nothing and I have only
>> /dev/mtd0.
>
> The partition ordering is strange, but not your problem. You only have
> mtd0 because the old Kernel doesn't recognize any partition table at
> all, note the additional partitions{} subnode which is only recognized
> by newer kernels. You have to set global.of_partition_binding="legacy".

I see now. It is working with the legacy option.

Thanks.

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
