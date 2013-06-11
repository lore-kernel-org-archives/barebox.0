Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x230.google.com ([2a00:1450:4008:c01::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UmKxI-0007jq-BW
 for barebox@lists.infradead.org; Tue, 11 Jun 2013 09:33:33 +0000
Received: by mail-bk0-f48.google.com with SMTP id jf17so3847291bkc.35
 for <barebox@lists.infradead.org>; Tue, 11 Jun 2013 02:33:10 -0700 (PDT)
Message-ID: <51B6EED2.3010707@gmail.com>
Date: Tue, 11 Jun 2013 11:33:06 +0200
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

On 05/19/13 09:34, Sascha Hauer wrote:
> Hi Sebastian,
>
> On Mon, May 13, 2013 at 01:09:06AM +0200, Sebastian Hesselbarth wrote:
>> This patch adds address translation for default bus types. It has been
>> shamelessly ported from Linux device tree address translation with the
>> following exceptions:
>> - only default bus map and translate are supported
>> - of_bus has not been ported
>> - check for #size-cells > 0 has been removed
>>
>> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
>
> I just gave this one a test.
>
> First of all you dropped 1:1 translation, see the attached fixup.
>
> Then, since this code duplicates the majority of drivers/of/address.c,
> would it make sense to move it to the same file in barebox aswell?

Sascha,

coming back to this I am wondering if a full sync of linux' drivers/of
with barebox' drivers/of should be done. IMHO at least for the core
stuff (base/address/fdt) it makes sense, of_* can come later if
required.

I started merging already, and from what I can see we should just remove
the spinlocks and OF_DYNAMIC stuff (but leave of_node_get/_put as stubs)

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
