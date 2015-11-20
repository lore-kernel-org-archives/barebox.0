Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zzcav-0007iV-7s
 for barebox@lists.infradead.org; Fri, 20 Nov 2015 03:42:42 +0000
Received: by lfdo63 with SMTP id o63so5661819lfd.0
 for <barebox@lists.infradead.org>; Thu, 19 Nov 2015 19:42:18 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1447869408.4553.168.camel@rtred1test09.kymeta.local>
References: <1447820824-12471-1-git-send-email-cobham.jason@gmail.com>
 <1447869408.4553.168.camel@rtred1test09.kymeta.local>
Date: Thu, 19 Nov 2015 19:42:18 -0800
Message-ID: <CAKu_b=JyDL8jdW3iq0XYTqZnz_5VV3tfPDCdvB08_g=oOzrqDQ@mail.gmail.com>
From: Jason Cobham <cobham.jason@gmail.com>
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
Subject: Re: [PATCH 1/4] ARM: ccxmx53: Add support for Digi ccxmx53 board.
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Nov 18, 2015 at 9:56 AM, Trent Piepho <tpiepho@kymetacorp.com> wrote:
> On Tue, 2015-11-17 at 20:27 -0800, Jason Cobham wrote:
>
>> +
>> +&esdhc3 {
>> +     pinctrl-names = "default";
>> +     pinctrl-0 = <&pinctrl_esdhc3>;
>> +     bus-width = <4>,<8>;
>> +     non-removable;
>> +     status = "okay";
>> +};
>
>
> Neither barebox nor the kernel support a list of values for bus-width.

Thanks, I'll fix this in v2.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
