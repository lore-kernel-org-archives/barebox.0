Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22e.google.com ([2a00:1450:400c:c00::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzsrB-0000PD-Lf
 for barebox@lists.infradead.org; Wed, 25 Jun 2014 19:27:46 +0000
Received: by mail-wg0-f46.google.com with SMTP id y10so2562793wgg.17
 for <barebox@lists.infradead.org>; Wed, 25 Jun 2014 12:27:23 -0700 (PDT)
Message-ID: <53AB229B.1010104@gmail.com>
Date: Wed, 25 Jun 2014 21:27:23 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1403705328-9924-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20140625191836.GS10202@titan.lakedaemon.net>
In-Reply-To: <20140625191836.GS10202@titan.lakedaemon.net>
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
Subject: Re: [PATCH RFC 0/4] MVEBU SoC full USB support
To: Jason Cooper <jason@lakedaemon.net>
Cc: barebox@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Andrew Lunn <andrew@lunn.ch>

On 06/25/2014 09:18 PM, Jason Cooper wrote:
> On Wed, Jun 25, 2014 at 04:08:44PM +0200, Sebastian Hesselbarth wrote:
>> This *RFC* adds a driver stub for ChipIdea USB dual role controllers
>> found on Marvell MVEBU SoCs. Although, I consider this driver quite
>> finished, the corresponding DT binding is not. Also, we currently
>> have no corresponding driver in Linux for both MVEBU CI stub and
>> USB PHY.
>>
>> The reason I send it here and now, is to get some input from the
>> (Linux) MVEBU guys on the binding and functional tests on Armada XP.
> 
> My first thought is if this chipidea IP is used beyond the mvebu
> ecosystem.  Shouldn't we name it and it's compatible strings with
> 'chipidea' instead of 'marvell'?

While the IP core is CI, you remember the mbus upstream registers?
That registers are very special to MVEBU SoCs and make the IP itself
"marvell".

But I agree, that we could add "chipidea", although spec itself names
it "ARC" already. ARC aquired CI and was later bought by Synopsys, but
at that time it must have been ARC.

> Also, is there any other way to differentiate between the two versions
> other that manufacturing process resolution?  Perhaps the free-electrons
> guys could get us some IP revision numbers?

I just followed how Marvell's BSP differentiates USB PHYs. In addition
to 40nm and 65nm, there will be 90nm and 130nm for the older SoCs.

If there is a way for free-electron to get more information about a
better naming, that would be nice.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
