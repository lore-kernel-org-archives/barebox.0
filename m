Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x22f.google.com ([2607:f8b0:400c:c05::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVtc6-0005sO-Sc
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 04:21:19 +0000
Received: by mail-vk0-x22f.google.com with SMTP id k196so4335502vka.0
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 20:20:58 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1455678623.18517.81.camel@rtred1test09.kymeta.local>
References: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
 <1455678623.18517.81.camel@rtred1test09.kymeta.local>
Date: Tue, 16 Feb 2016 20:20:57 -0800
Message-ID: <CAHQ1cqGov0qDctaUmrufTUHMdbK_g33cKpmK4GPX6TkkZDqyTA@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 00/17] RFC for additional 'nvmem' plumbing
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Feb 16, 2016 at 7:09 PM, Trent Piepho <tpiepho@kymetacorp.com> wrote:
> On Tue, 2016-02-16 at 17:29 -0800, Andrey Smirnov wrote:
>> Hi everyone,
>>
>> The main purpose of this patchset is propose additional Nvmem plubing
>> needed for that subsytem's inclusion in BB and solicit feedback about
>> it (patches ## 15 to 17) . Included in this set are also a number of
>> bugfixes and RFC-for-bugfixes for problems that were discoverd during
>> development of this patch series.
>>
>> Proposed Nvmem additions are two new platform device drivers that
>> implement a nvmem interface on top of data embedded in DT as well as
>> nvmem interface that allows to combine existing nvmem-accesible bytes
>> into continuous blocks.
>>
>> Below is an example of DT code that uses both drivers in order to
>> create a MAC address as a combination of bytes from DT and OCOTP
>> module:
>
> So for a common case Sasha has pointed out, of the MAC in the opposite
> byte order, one would write:
>
>         scatter-gather-blob {
>                 compatible = "barebox,nvmem-sg";
>                 #address-cells = <1>;
>                 #size-cells = <1>;
>
>                 mac_address: combined-bits {
>                         reg = <0 6>;
>                         layout = <&fec_mac_address 5 1
>                                   &fec_mac_address 4 1
>                                   &fec_mac_address 3 1
>                                   &fec_mac_address 2 1
>                                   &fec_mac_address 1 1
>                                   &fec_mac_address 0 1>;
>                 };
>         };
>
>         &ocotp {
>                 #address-cells = <1>;
>                 #size-cells = <1>;
>
>                 fec_mac_address: mac_address@88 {
>                         reg = <0x88 0x8>;
>                 };
>         };
>
>         &fec {
>                 ?mac-address-location?? = <&mac_address>;
>         };
>

mac_address is still a nvmem cell, so the DT code for FEC would remain the same:

&fec {
    nvmem-cells = <&mac_address>;
    nvmem-cell-names = "mac-address";
}


> I suppose that's a very powerful system, but it does seem a bit
> cumbersome.

I agree, those bindings don't really make me glow with pride because
of their elegance, but unfortunately I wasn't able to come up with
anything better that would be as generic and not tied into a
particular use case of MAC address manipulation.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
