Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from pig2.dooz.org ([88.191.118.219])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1REdbk-00018J-QA
	for barebox@lists.infradead.org; Fri, 14 Oct 2011 08:59:13 +0000
Date: Fri, 14 Oct 2011 10:59:03 +0200
From: =?iso-8859-1?Q?Lo=EFc?= Minier <lool@dooz.org>
Message-ID: <20111014085903.GA26536@bee.dooz.org>
References: <1318543601-20819-1-git-send-email-loic.minier@linaro.org>
	<1318543601-20819-6-git-send-email-loic.minier@linaro.org>
	<20111014072020.GY13898@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111014072020.GY13898@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/5] Use size_t for memory offsets
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Oct 14, 2011, Sascha Hauer wrote:
> You should change the prototypes in include/driver.h aswell.

 Ah thanks, now it strikes me that the very same constructs are present
 in many file_operations implementations; e.g. imx_iim_cdev_read and
 imx_iim_cdev_write also use an ulong offset, as well as
 ubi_volume_cdev_read/ubi_volume_cdev_write (unsigned long), lp_read,
 miidev_read/_write etc.

 I had a look at file_operations in linux now, and it uses
 size_t/ssize_t and a loff_t type for regular read/write:
struct file_operations {
        loff_t (*llseek) (struct file *, loff_t, int);
        ssize_t (*read) (struct file *, char __user *, size_t, loff_t *);
        ssize_t (*write) (struct file *, const char __user *, size_t, loff_=
t *);

 however for aio:
        ssize_t (*aio_read) (struct kiocb *, const struct iovec *, unsigned=
 long, loff_t);
        ssize_t (*aio_write) (struct kiocb *, const struct iovec *, unsigne=
d long, loff_t);

 loff_t is defined as long long on 32-bits and 64-bits arches, which I
 believe are both 8 bytes.

 So perhaps it's better to switch from ulong to unsigned long long for
 offsets?  This isn't important for mem_read/mem_write, but it would be
 for e.g. MMC accesses as it's of course valid to seek after the first
 4 G of a MMC on a 32-bits system.

-- =

Lo=EFc Minier

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
