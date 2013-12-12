Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ve0-x229.google.com ([2607:f8b0:400c:c01::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VrBsg-0007Ht-QC
 for barebox@lists.infradead.org; Thu, 12 Dec 2013 19:25:08 +0000
Received: by mail-ve0-f169.google.com with SMTP id c14so674000vea.0
 for <barebox@lists.infradead.org>; Thu, 12 Dec 2013 11:24:45 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20131212191206.GA4040@omega>
References: <CAJyuEeeO5KpoZpmoSFj8AOOPJ+1o-iWjmQVBZS9FCj2Z7d38kA@mail.gmail.com>
 <20131212080359.GE24559@pengutronix.de>
 <CAJyuEefmcqQVKKszuvmGZx4NqaK+j79+-g4gD-ruq9vMO85Wug@mail.gmail.com>
 <CAJyuEedGuDU7yX29MeM3894xQ3c3FuZgp1h_ahFXvzLr2_0fdQ@mail.gmail.com>
 <20131212191206.GA4040@omega>
Date: Thu, 12 Dec 2013 14:24:45 -0500
Message-ID: <CAJyuEecKAePbPRr2hMe1hXCQPcaENU4qUhKFYctOnD-kNpYYgg@mail.gmail.com>
From: Michael Burkey <mdburkey@gmail.com>
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
Subject: Re: Porting barebox (devicetree) to Variscite iMX6 SOM
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

You are correct!

Apparently, I have problems with pesky little things like simple addition! ;-)

Thanks for spotting that. I hadn't proofed that part of the code
thoroughly yet (we are still just using SD Card for the moment with an
intent to move to GPMI "eventually").

If only the other problem was this easy to fix!

On 12/12/13, Alexander Aring <alex.aring@gmail.com> wrote:
> Hi,
>
> some little notice... this should not fix your problem.
>
> On Thu, Dec 12, 2013 at 01:56:14PM -0500, Michael Burkey wrote:
>> Additionally, here are the dts and dtsi files I added for the Variscite
>> part:
>>
> ...
>> 	partition@0 {
>> 		label = "barebox";
>> 		reg = <0x0 0x200000>;
>> 	};
>>
>> 	partition@1 {
>> 		label = "barebox-environment";
>> 		reg = <0x200000 0x10000>;
>> 	};
>>
>> 	partition@2 {
>> 		label = "kernel";
>> 		reg = <0x210000 0x600000>;
>> 	};
>>
>> 	partition@3 {
>> 		label = "rootfs";
>> 		reg = <0x860000 0x18000000>;
>
> I think this should be "reg = <0x810000 ...>" or you have a little unused
> space :-)
>
> - Alex
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
