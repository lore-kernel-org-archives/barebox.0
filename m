Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22d.google.com ([2a00:1450:400c:c00::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X08To-0004W1-DG
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 12:08:45 +0000
Received: by mail-wg0-f45.google.com with SMTP id l18so3518464wgh.4
 for <barebox@lists.infradead.org>; Thu, 26 Jun 2014 05:08:16 -0700 (PDT)
Message-ID: <53AC0D2B.3090803@gmail.com>
Date: Thu, 26 Jun 2014 14:08:11 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1403705328-9924-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20140625191836.GS10202@titan.lakedaemon.net> <53AB229B.1010104@gmail.com>
In-Reply-To: <53AB229B.1010104@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH RFC 0/4] MVEBU SoC full USB support
To: Jason Cooper <jason@lakedaemon.net>
Cc: barebox@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Andrew Lunn <andrew@lunn.ch>

On 06/25/2014 09:27 PM, Sebastian Hesselbarth wrote:
> On 06/25/2014 09:18 PM, Jason Cooper wrote:
>> On Wed, Jun 25, 2014 at 04:08:44PM +0200, Sebastian Hesselbarth wrote:
>>> This *RFC* adds a driver stub for ChipIdea USB dual role controllers
>>> found on Marvell MVEBU SoCs. Although, I consider this driver quite
>>> finished, the corresponding DT binding is not. Also, we currently
>>> have no corresponding driver in Linux for both MVEBU CI stub and
>>> USB PHY.
>>>
>>> The reason I send it here and now, is to get some input from the
>>> (Linux) MVEBU guys on the binding and functional tests on Armada XP.
>>
>> My first thought is if this chipidea IP is used beyond the mvebu
>> ecosystem.  Shouldn't we name it and it's compatible strings with
>> 'chipidea' instead of 'marvell'?
>
> While the IP core is CI, you remember the mbus upstream registers?
> That registers are very special to MVEBU SoCs and make the IP itself
> "marvell".

While working with Dove's SDHCI, I thought about the upstream registers
again. Dove's SDHCI shares those registers with Camera IP which makes
it difficult to find a good DT representation again.

Maybe we should think about moving upstream register setup to mbus
driver instead? That would also allow us to get rid of mvebu specific
boiler plates from those standard (fooHCI) IP drivers.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
