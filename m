Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22b.google.com ([2a00:1450:4008:c01::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UoWbW-00039q-Tt
 for barebox@lists.infradead.org; Mon, 17 Jun 2013 10:24:07 +0000
Received: by mail-bk0-f43.google.com with SMTP id jm2so1093198bkc.30
 for <barebox@lists.infradead.org>; Mon, 17 Jun 2013 03:23:44 -0700 (PDT)
Message-ID: <51BEE3AD.20406@gmail.com>
Date: Mon, 17 Jun 2013 12:23:41 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1368400146-30443-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130519073403.GY32299@pengutronix.de> <51B6EED2.3010707@gmail.com>
 <20130613092557.GC32299@pengutronix.de> <51B9930B.8080609@gmail.com>
 <20130613124833.GD32299@pengutronix.de> <51BA1476.3060309@gmail.com>
 <20130617074724.GK32299@pengutronix.de>
In-Reply-To: <20130617074724.GK32299@pengutronix.de>
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

On 06/17/2013 09:47 AM, Sascha Hauer wrote:
> On Thu, Jun 13, 2013 at 08:50:30PM +0200, Sebastian Hesselbarth wrote:
>> On 06/13/13 14:48, Sascha Hauer wrote:
>>> On Thu, Jun 13, 2013 at 11:38:19AM +0200, Sebastian Hesselbarth wrote:
>>>> On 06/13/13 11:25, Sascha Hauer wrote:
>>>>> Sounds like a plan. Functions existing both in barebox and Linux should
>>>>> behave the same way. However, if Linux turns out to do something silly
>>>>> or (for our usecase) too bloated, we shouldn't do the same just because
>>>>> Linux does it.
>> pushed a branch you can have a first look at to
>>
>> git://github.com/shesselba/barebox-dove.git of-sync-v1
>
> I had a quick look at this branch. It has some really good stuff in it.
> You should post it for a closer review if you consider it ready.

Ok, I've had another round of patches in branch of-sync-part2-v1. I will
merge both and either send an RFC or merge in some clean-ups. I didn't
provide stubs for !CONFIG_OF at some places.

It is already kind of huge patch, so I prefer sending it before more
stuff gets in. Currently, it is more or less fully merged with Linux OF
API wrt base.c.

Next would be to move code that should have been in common/oftree.c in
the first place (of_add_initrd, of_print_nodes, ...), move out stuff to
of/device.c and of/address.c.

I haven't looked into barebox' driver/device backend but realized that
struct resource is attached to the device_node. Maybe it should also
move to some other struct (device_d) ?

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
