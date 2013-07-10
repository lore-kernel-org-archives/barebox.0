Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22a.google.com ([2a00:1450:4013:c00::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ux3Ey-00013n-0u
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 22:52:04 +0000
Received: by mail-ee0-f42.google.com with SMTP id c4so5146523eek.29
 for <barebox@lists.infradead.org>; Wed, 10 Jul 2013 15:51:38 -0700 (PDT)
Message-ID: <51DDE56B.8090701@gmail.com>
Date: Thu, 11 Jul 2013 00:51:23 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1373059339-20513-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130709173806.GW516@pengutronix.de>
In-Reply-To: <20130709173806.GW516@pengutronix.de>
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
Subject: Re: [RFC 0/2] mci: Dove SDHCI driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 07/09/2013 07:38 PM, Sascha Hauer wrote:
> On Fri, Jul 05, 2013 at 11:22:17PM +0200, Sebastian Hesselbarth wrote:
>> This RFC presents a working SDHCI driver for the IP found on Marvell
>> Dove SoCs.
>>
>> @Sascha: We talked about refactoring common SDHCI code and I just want
>> to show what I came up with for Dove. After thinking about existing barebox
>> SDHCI, I had the impression that I should reimplement Dove SDHCI with writel
>> as it is already made in other SDHCI drivers.
>
> Yes, common register accessors would make it possible to share code.
> Maybe we can start with some sdhc_write[bwl]/read[bwl] functions which
> are static inline wrappers around regular writel/readl. This would make
> it possible to add an indirection there should we have to.

Sascha,

a quick look at the SDHCI spec showed that the "native" word width is
16b. At least Dove allows you to read registers at any width, but there
may be other controllers with limited word width capabilities. Anyway,
I guess we should try to have the common code and the defines use those
16b reg width.

>> I will be not checking mails regularily nor working on Barebox for the next
>> two weeks, so feel free to simply ignore the RFC. But I thought it will be
>> a good way to discuss your plans for common SDHCI code.
>
> I think the driver looks mostly good. It should be a good base to factor
> out common code in the future.

Ok, when I get back to this, I will prepare a real patch for it.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
