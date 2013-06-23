Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22d.google.com ([2a00:1450:4013:c01::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uqquz-00016i-5d
 for barebox@lists.infradead.org; Sun, 23 Jun 2013 20:29:49 +0000
Received: by mail-ea0-f173.google.com with SMTP id g15so5701907eak.18
 for <barebox@lists.infradead.org>; Sun, 23 Jun 2013 13:29:26 -0700 (PDT)
Message-ID: <51C75AA3.8080202@gmail.com>
Date: Sun, 23 Jun 2013 22:29:23 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1371827718-7928-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1371827718-7928-4-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130623183324.GJ32299@pengutronix.de> <51C7567B.20008@gmail.com>
 <20130623202619.GS32299@pengutronix.de>
In-Reply-To: <20130623202619.GS32299@pengutronix.de>
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
Subject: Re: [PATCH 3/3] OF: base: add empty property value pointer
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 06/23/2013 10:26 PM, Sascha Hauer wrote:
> On Sun, Jun 23, 2013 at 10:11:39PM +0200, Sebastian Hesselbarth wrote:
>> On 06/23/2013 08:33 PM, Sascha Hauer wrote:
>>> Why do we need this anyway? We can always call of_find_property() to see
>>> if a property exists.
>>
>> Actually, I was preparing to import drivers/of/address.c from linux.
>> of_translate_one uses of_get_property on "ranges". This returns
>> the property's value pointer instead of the property itself, which
>> is NULL for an empty ranges property. Now that you point it out,
>> using of_find_property is also an option.
>>
>> Nevertheless, patches 1 (with your comments applied) and 2 seem
>> sensible to me. Patch 3 is an option to keep it in sync with Linux
>> OF API behavior but is optional.
>
> How about allocating zero length property values with malloc(0)? This
> makes them less special.

Agree, I will update the patch set and send a v2 hopefully soon.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
