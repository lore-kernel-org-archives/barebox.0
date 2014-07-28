Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22f.google.com ([2a00:1450:400c:c00::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XBe88-0006HZ-7k
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 06:09:52 +0000
Received: by mail-wg0-f47.google.com with SMTP id b13so6750718wgh.18
 for <barebox@lists.infradead.org>; Sun, 27 Jul 2014 23:09:29 -0700 (PDT)
Message-ID: <53D5E915.70502@gmail.com>
Date: Mon, 28 Jul 2014 08:09:25 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1406388285-1666-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20140728054112.GT23235@pengutronix.de>
In-Reply-To: <20140728054112.GT23235@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 0/7] Minor USB fixes and xHCI driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 07/28/2014 07:41 AM, Sascha Hauer wrote:
> On Sat, Jul 26, 2014 at 05:24:38PM +0200, Sebastian Hesselbarth wrote:
>>
>> Sebastian Hesselbarth (7):
>>   USB: Fix stale usb devices in usb_device_list
>>   USB: Count detected USB devices independent of dev_index
>>   USB: improve error paths and tear-down
>>   USB: EHCI: use min3 from Linux
>>   include: import {lower,upper}_32_bits helpers
>>   USB: host: add xHCI HCD, Hub, and platform driver
>>   USB: host: add xHCI PCI driver
> 
> Applied, thanks.
> 
> You probably need the PCIe driver aswell to make use of this series,
> but it shouldn't be needed to compile this series, right?

Yep, no compile time dependency here.

Thanks!

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
