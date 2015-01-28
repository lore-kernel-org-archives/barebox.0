Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp02.smtpout.orange.fr ([80.12.242.124]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGbUG-0007cy-7h
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 22:53:29 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1422308027-13836-1-git-send-email-robert.jarzmik@free.fr>
 <1422308027-13836-2-git-send-email-robert.jarzmik@free.fr>
 <20150128090028.GB12209@pengutronix.de>
Date: Wed, 28 Jan 2015 23:53:02 +0100
In-Reply-To: <20150128090028.GB12209@pengutronix.de> (Sascha Hauer's message
 of "Wed, 28 Jan 2015 10:00:28 +0100")
Message-ID: <87oapio6up.fsf@free.fr>
MIME-Version: 1.0
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
Subject: Re: [PATCH 2/2] ARM: pxa: add lubbock board support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> On Mon, Jan 26, 2015 at 10:33:47PM +0100, Robert Jarzmik wrote:
>> +
>> +static int lubbock_mem_init(void)
>> +{
>> +	arm_add_mem_device("ram0", 0xa0000000, SZ_64M);
>> +	arm_add_mem_device("sram0", 0x0a000000, SZ_1M);
>
> When doing this you'll end up with the SRAM being in ATAGS which is
> probably not what you want. Use add_mem_device() instead.
Right, for v2.

> No hardcoded MAC addresses please. barebox generates a random MAC
> address for you if your board is unable to provide a real one.

I'll remove that from the upstreamed patch. I'll keep it for me for my ISP
router to give me consistently the same IP address through DHCP.

>> +dhcp -H lubbock
>
> dhcp during init time? This unnecessarily delays the boot process when
> booting from flash.
>
> This environment looks very specific to your usecase. Can't you just use
> the generic defenv-2 template?
I'll try for v2, yes.
Speaking of which, this implies one redundant information :
 - the env/init/mtdpart-nor to define partitions (including bareboxenv)
 - the code to add env0:
   devfs_add_partition("nor0", SZ_2M, SZ_256K, DEVFS_PARTITION_FIXED, "env0")

This means that if the partition scheme changes, barebox binary has to be
recompiled and reflashed. Isn't there a better way ? (that was what my
mtd_env_override tried to do btw).

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
