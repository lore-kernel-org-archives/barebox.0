Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo6.mail-out.ovh.net ([188.165.38.119])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YW8I1-0007mn-Ax
 for barebox@lists.infradead.org; Thu, 12 Mar 2015 18:57:02 +0000
Received: from mail415.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id 89966FF934A
 for <barebox@lists.infradead.org>; Thu, 12 Mar 2015 19:56:37 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20150312174149.GH24885@pengutronix.de>
Date: Fri, 13 Mar 2015 02:56:30 +0800
Message-Id: <21AC6CBD-8D85-44D9-86BF-E15F3BD68252@jcrosoft.com>
References: <20150312141938.GS30554@ns203013.ovh.net>
 <1426170146-31302-1-git-send-email-plagnioj@jcrosoft.com>
 <1426170146-31302-4-git-send-email-plagnioj@jcrosoft.com>
 <20150312174149.GH24885@pengutronix.de>
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
Subject: Re: [PATCH 4/7] digest: add verify callback
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


> On Mar 13, 2015, at 1:41 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> On Thu, Mar 12, 2015 at 03:22:23PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
>> this will allow to compare a md with the original one
>> 
>> When calling this do not call final
>> 
>> For RSA_SIGN verification final does not exist only verify
>> as final will be for signing
>> 
>> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
>> ---
>> crypto/digest.c   | 23 ++++++++++++++++++++++-
>> crypto/hmac.c     |  1 +
>> crypto/internal.h |  2 ++
>> crypto/md5.c      |  1 +
>> crypto/sha1.c     |  1 +
>> crypto/sha2.c     |  2 ++
>> crypto/sha4.c     |  2 ++
>> include/digest.h  |  6 ++++++
>> 8 files changed, 37 insertions(+), 1 deletion(-)
>> 
>> diff --git a/crypto/digest.c b/crypto/digest.c
>> index c06089d..98c3607 100644
>> --- a/crypto/digest.c
>> +++ b/crypto/digest.c
>> @@ -26,6 +26,8 @@
>> #include <module.h>
>> #include <linux/err.h>
>> 
>> +#include "internal.h"
>> +
>> static LIST_HEAD(digests);
>> 
>> static struct digest_algo *digest_algo_get_by_name(const char *name);
>> @@ -37,9 +39,28 @@ static int dummy_init(struct digest *d)
>> 
>> static void dummy_free(struct digest *d) {}
>> 
>> +int digest_generic_verity(struct digest *d, const unsigned char *md)
> 
> s/verity/verify/
> 

I already fix this wired that the pull is different from my local version
>> +{
>> +	int ret;
>> +	int len = digest_length(d);
>> +	unsigned char *tmp;
>> +
>> +	tmp = xmalloc(sizeof(len));
> 
> sizeof(len) is not what you want.
> 
ditto
>> +
>> +	ret = digest_final(d, tmp);
>> +	if (ret)
>> +		goto end;
>> +
>> +	ret = memcmp(md, tmp, len);
> 
> ret = ret ? -EINVAL : 0;
> 
> To consistently return an error code.
yeap

Best Regards,
J.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
