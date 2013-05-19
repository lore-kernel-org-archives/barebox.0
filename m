Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x230.google.com ([2a00:1450:4013:c01::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Udyen-0000Ln-0U
 for barebox@lists.infradead.org; Sun, 19 May 2013 08:07:53 +0000
Received: by mail-ea0-f176.google.com with SMTP id k11so3234280eaj.21
 for <barebox@lists.infradead.org>; Sun, 19 May 2013 01:07:29 -0700 (PDT)
Message-ID: <5198883E.5080803@gmail.com>
Date: Sun, 19 May 2013 10:07:26 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1368400146-30443-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130519073403.GY32299@pengutronix.de>
In-Reply-To: <20130519073403.GY32299@pengutronix.de>
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
Subject: Re: [PATCH] of: add ranges address translation for default bus
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 05/19/2013 09:34 AM, Sascha Hauer wrote:
> Hi Sebastian,
>
> On Mon, May 13, 2013 at 01:09:06AM +0200, Sebastian Hesselbarth wrote:
>> This patch adds address translation for default bus types. It has been
>> shamelessly ported from Linux device tree address translation with the
>> following exceptions:
>> - only default bus map and translate are supported
>> - of_bus has not been ported
>> - check for #size-cells>  0 has been removed
>>
>> Signed-off-by: Sebastian Hesselbarth<sebastian.hesselbarth@gmail.com>
>
> I just gave this one a test.
>
> First of all you dropped 1:1 translation, see the attached fixup.

Sascha,

I know I dropped it, but have you tried empty/bool properties?
I had no luck with an empty/bool ranges, so I removed the 1:1
translation by empty property and wanted to take a look at bool
props first.

Could be that, I was just tired and made a mistake. Will investigate
as soon as Thomas aggrees to my next consolidation patch set.

> Then, since this code duplicates the majority of drivers/of/address.c,
> would it make sense to move it to the same file in barebox aswell?

In general, yes. If you copy the behavior of linux, we should not
try to merge individual base.c, address.c, whatever.c out of drivers/of
into differently named files.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
