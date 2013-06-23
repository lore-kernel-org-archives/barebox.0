Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f52.google.com ([74.125.83.52])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uqqds-0000rl-Lu
 for barebox@lists.infradead.org; Sun, 23 Jun 2013 20:12:09 +0000
Received: by mail-ee0-f52.google.com with SMTP id c50so5608586eek.25
 for <barebox@lists.infradead.org>; Sun, 23 Jun 2013 13:11:43 -0700 (PDT)
Message-ID: <51C7567B.20008@gmail.com>
Date: Sun, 23 Jun 2013 22:11:39 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1371827718-7928-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1371827718-7928-4-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130623183324.GJ32299@pengutronix.de>
In-Reply-To: <20130623183324.GJ32299@pengutronix.de>
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

On 06/23/2013 08:33 PM, Sascha Hauer wrote:
> On Fri, Jun 21, 2013 at 05:15:18PM +0200, Sebastian Hesselbarth wrote:
>> Since property values can be empty, we need property value pointer to
>> be non-NULL to distinguish those properties from non-existing properties.
>> This adds a static u32 to which empty properties set their value pointer.
>> Also, the value memory is only freed, if property length is not zero.
>>
>> Signed-off-by: Sebastian Hesselbarth<sebastian.hesselbarth@gmail.com>
>> ---
>> Cc: barebox@lists.infradead.org
>> ---
>>   drivers/of/base.c |    6 +++++-
>>   1 files changed, 5 insertions(+), 1 deletions(-)
>>
>> diff --git a/drivers/of/base.c b/drivers/of/base.c
>> index 7926d5d..a100a17 100644
>> --- a/drivers/of/base.c
>> +++ b/drivers/of/base.c
>> @@ -1501,6 +1501,8 @@ struct device_node *of_new_node(struct device_node *parent, const char *name)
>>   	return node;
>>   }
>>
>> +static u32 empty_prop_value;
>> +
>>   struct property *of_new_property(struct device_node *node, const char *name,
>>   		const void *data, int len)
>>   {
>> @@ -1515,6 +1517,7 @@ struct property *of_new_property(struct device_node *node, const char *name,
>>   		goto bail_out;
>>
>>   	prop->length = len;
>> +	prop->value =&empty_prop_value;
>
> This at least breaks of_set_property() and of_free(). Both unconditionally
> do a free(pp->value).

Sascha,

this is patch 3/3, the two functions above are taken care of patch 2/3.

> Why do we need this anyway? We can always call of_find_property() to see
> if a property exists.

Actually, I was preparing to import drivers/of/address.c from linux.
of_translate_one uses of_get_property on "ranges". This returns
the property's value pointer instead of the property itself, which
is NULL for an empty ranges property. Now that you point it out,
using of_find_property is also an option.

Nevertheless, patches 1 (with your comments applied) and 2 seem
sensible to me. Patch 3 is an option to keep it in sync with Linux
OF API behavior but is optional.

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
