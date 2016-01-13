Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk0-x242.google.com ([2607:f8b0:400d:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aJNsI-0002d9-HU
 for barebox@lists.infradead.org; Wed, 13 Jan 2016 16:02:19 +0000
Received: by mail-qk0-x242.google.com with SMTP id e124so12518157qkc.3
 for <barebox@lists.infradead.org>; Wed, 13 Jan 2016 08:01:57 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20160113155013.GY13058@pengutronix.de>
References: <1452593799-21408-1-git-send-email-yegorslists@googlemail.com>
 <20160113155013.GY13058@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Wed, 13 Jan 2016 17:01:37 +0100
Message-ID: <CAGm1_ksKApES__v5YmfU_7T-xCVxNG+kV8sN0xgcXwv0JJF_pQ@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 1/2] of: rework of_node_cmp() to support short and full
 node names
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>, Trent Piepho <tpiepho@kymetacorp.com>

Hi Sascha,

On Wed, Jan 13, 2016 at 4:50 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Yegor,
>
> On Tue, Jan 12, 2016 at 11:16:38AM +0100, yegorslists@googlemail.com wrote:
>> + * Compare node names using the length of the node in question
>> + * and then check, if the in-tree node has '@' as next character.
>> + * This way both short names like 'name' and full like 'name@1' will
>> + * be accepted.
>> + */
>> +int of_node_cmp(const char *s1, const char *s2)
>> +{
>> +     int len = strlen(s2);
>> +
>> +     if (strncasecmp(s1, s2, len) != 0)
>> +             return 1;
>> +
>> +     if (s1[len] == '\0')
>> +             return 0;
>> +     else if (!memchr(s2, '@', len) && (s1[len] == '@'))
>> +             return 0;
>> +     else
>> +             return 1;
>> +}
>> +
>> +/*
>>   * Iterate over all nodes of a tree. As a devicetree does not
>>   * have a dedicated list head, the start node (usually the root
>>   * node) will not be iterated over.
>> diff --git a/include/of.h b/include/of.h
>> index 75cc3c1..3b18eef 100644
>> --- a/include/of.h
>> +++ b/include/of.h
>> @@ -10,7 +10,6 @@
>>  /* Default string compare functions */
>>  #define of_compat_cmp(s1, s2, l)     strcasecmp((s1), (s2))
>>  #define of_prop_cmp(s1, s2)          strcmp((s1), (s2))
>> -#define of_node_cmp(s1, s2)          strcasecmp((s1), (s2))
>
> of_node_cmp is used elsewhere and a direct copy from the Kernel. You
> should introduce a new function for your purpose instead of modifying
> it.

What about of_node_eq()?

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
