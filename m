Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZvrWa-0007at-Vv
 for barebox@lists.infradead.org; Mon, 09 Nov 2015 18:50:41 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Mon, 9 Nov 2015 18:49:53 +0000
Message-ID: <1447094995.4553.50.camel@rtred1test09.kymeta.local>
References: <1447065171-31571-1-git-send-email-pmamonov@gmail.com>
In-Reply-To: <1447065171-31571-1-git-send-email-pmamonov@gmail.com>
Content-Language: en-US
Content-ID: <54CF981387A16E429EA2E3D79CDFAC75@kymetacorp.com>
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
Subject: Re: [PATCH] common: filetype: do not redetect MBR-type devices as a
 FAT-type
To: Peter Mamonov <pmamonov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, 2015-11-09 at 13:32 +0300, Peter Mamonov wrote:
> Deleted pieces of code detect MBR-containig device as a FAT-type device,
> if it's first partition contains a FAT filesystem. This behaviour enabled one
> to mount the FAT FS which is either directly on the device (disk0) or on
> the first partition (disk0.0) using the same command:
>     mount /dev/disk0 /fat
> However, the desired behaviour can be reached with a:
>     mount /dev/disk0 /fat || mount /dev/disk0.0 /fat || echo "Mounting failed"

The in flash env for omap is found by mounting a FAT filesystem and
reading an env file from it.  The code that does this uses the disk as
the device, rather than the partition.  Which I thought was odd and
wondered why/if that worked correctly....

Anyway, this change would break that code.  I suspect than instead of
coding the disk0 || disk0.0 method it could just mount disk0.0.  Because
the code does this (edited):

partname = asprintf("/dev/%s.0", diskdev);
ret = stat(partname, &s);
if (ret) {
  pr_err("Failed to load environment: no device '%s'\n", diskdev);
  return 0;
}
ret = mount(diskdev, "fat", "/boot", NULL);


If disk0.0 didn't exist then it wouldn't try to mount it in the 1st
place, so the ability of trying both disk0 and disk0.0 wouldn't be used.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
