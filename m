Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x242.google.com ([2607:f8b0:4002:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bSqjv-0004XU-NP
 for barebox@lists.infradead.org; Thu, 28 Jul 2016 19:13:04 +0000
Received: by mail-yw0-x242.google.com with SMTP id j12so6747718ywb.1
 for <barebox@lists.infradead.org>; Thu, 28 Jul 2016 12:12:42 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <5799F2BB.2020205@phytec.de>
References: <1469024265-20098-1-git-send-email-w.egorov@phytec.de>
 <1469024265-20098-2-git-send-email-w.egorov@phytec.de>
 <CAHQ1cqF9vATXHQRTo=kX+2W3EEb0mzSJXRp=LOHWFaNZfi1zOg@mail.gmail.com>
 <5799F2BB.2020205@phytec.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 28 Jul 2016 12:12:41 -0700
Message-ID: <CAHQ1cqHY2qBXDrH5Ai3H5S0Hu8J+L4PqxYH3iDG1noZHFsk8Gw@mail.gmail.com>
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
Subject: Re: [PATCH 2/8] ARM: rockchip: Add timer driver
To: Wadim Egorov <w.egorov@phytec.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Jul 28, 2016 at 4:55 AM, Wadim Egorov <w.egorov@phytec.de> wrote:
>
>
> On 20.07.2016 19:35, Andrey Smirnov wrote:
>> On Wed, Jul 20, 2016 at 7:17 AM, Wadim Egorov <w.egorov@phytec.de> wrote:
>>> This driver comes from the u-boot (v2016.01).
>> I'd suggest this to be moved to "drivers/clocksource" and converted to
>> a proper driver that binds against DT node and doesn't use a CONFIG_*
>> symbol to determine its base address.
>
> I want to use this driver in the SPL part later. The SRAM we can use is
> very limited on the RK3288. So I don't want to add more DT code here.

You can do add_generic_device() in SPL and compiler would probably
throw away the majority, if not all, of DT specific code if
CONFIG_OFTREE is not enabled.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
