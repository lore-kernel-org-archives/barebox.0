Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22e.google.com ([2a00:1450:4008:c01::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Us84n-0002a1-2P
 for barebox@lists.infradead.org; Thu, 27 Jun 2013 09:01:13 +0000
Received: by mail-bk0-f46.google.com with SMTP id na10so170046bkb.19
 for <barebox@lists.infradead.org>; Thu, 27 Jun 2013 02:00:50 -0700 (PDT)
Message-ID: <51CBFF3E.6090306@gmail.com>
Date: Thu, 27 Jun 2013 11:00:46 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1372152047-28134-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130627065118.GA10414@pengutronix.de> <51CBEEB2.5090209@gmail.com>
 <20130627085816.GF516@pengutronix.de>
In-Reply-To: <20130627085816.GF516@pengutronix.de>
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
Subject: Re: [PATCH 0/9] OF: address and device related sync and cleanup
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 06/27/13 10:58, Sascha Hauer wrote:
> On Thu, Jun 27, 2013 at 09:50:10AM +0200, Sebastian Hesselbarth wrote:
>> On 06/27/13 08:51, Sascha Hauer wrote:
>>> Applied this series with the change that I removed the dead code
>>> ifdeffed with CONFIG_PPC_DCR.
>>
>> Ok, great! Next patch sets will be focused on actually using the
>> DT improvements. I have an SPI driver for MACH_MVEBU ready and
>> running, and I am working on importing generic SDHCI from Linux.
>
> The sdhc driver in Linux is a big piece of shit which uses the wrong
> abstraction model. This is shown by the fact that 32bits are not enough
> to abstract the quirks. Even with all these quirks the i.MX part of this
> driver has to implement driver logic in the register access functions.
> That just insane. I'm not really looking forward to add this driver
> to barebox.

Ok, fair enough. Then I'll be adding the required callbacks to Dove
SDHCI driver directly based on current barebox i.MX driver.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
