Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1csUT4-0000QE-1F
 for barebox@lists.infradead.org; Mon, 27 Mar 2017 13:13:57 +0000
Received: from player157.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with ESMTP id 5349278565
 for <barebox@lists.infradead.org>; Mon, 27 Mar 2017 15:13:28 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20170326082322.bgy7gkj3duid4wjb@pengutronix.de>
Date: Mon, 27 Mar 2017 19:50:44 +0800
Message-Id: <A092B5A1-489D-4A2C-AA73-B2F5F4FBCC18@jcrosoft.com>
References: <20170325083155.GA14076@mail.ovh.net>
 <1490496304-30850-1-git-send-email-plagnioj@jcrosoft.com>
 <1490496304-30850-7-git-send-email-plagnioj@jcrosoft.com>
 <20170326082322.bgy7gkj3duid4wjb@pengutronix.de>
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
Subject: Re: [PATCH 07/13] go: only use it if boot signature is not required
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org


> On 26 Mar 2017, at 4:23 PM, Michael Olbrich <m.olbrich@pengutronix.de> wrote:
> 
> On Sun, Mar 26, 2017 at 04:44:58AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
>> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> 
> Does this realy help? If someone has access to the barebox shell, then
> there are many ways to overwrite the secure boot check.

No have shell support does not mean been allow to by pass secure boot
As you think user interaction vs script

And do not forget the boot sequence can be change by the OS (user)

So we may endup to try to boot other images or boot sequence that use go

Best Regards,
J.


> Michael
> 
>> ---
>> commands/go.c | 4 ++++
>> 1 file changed, 4 insertions(+)
>> 
>> diff --git a/commands/go.c b/commands/go.c
>> index fb319b320..e0385a977 100644
>> --- a/commands/go.c
>> +++ b/commands/go.c
>> @@ -26,6 +26,7 @@
>> #include <fcntl.h>
>> #include <linux/ctype.h>
>> #include <errno.h>
>> +#include <boot_verify.h>
>> 
>> static int do_go(int argc, char *argv[])
>> {
>> @@ -37,6 +38,9 @@ static int do_go(int argc, char *argv[])
>> 	if (argc < 2)
>> 		return COMMAND_ERROR_USAGE;
>> 
>> +	if (boot_get_verify_mode() < BOOT_VERIFY_AVAILABLE)
>> +		return -ESECVIOLATION;
>> +
>> 	if (!isdigit(*argv[1])) {
>> 		fd = open(argv[1], O_RDONLY);
>> 		if (fd < 0) {
>> -- 
>> 2.11.0
>> 
>> 
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
