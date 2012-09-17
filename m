Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo5.mail-out.ovh.net ([188.165.57.91]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TDUFA-0005Kw-EZ
 for barebox@lists.infradead.org; Mon, 17 Sep 2012 05:51:41 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 17AE7FF9B46
 for <barebox@lists.infradead.org>; Mon, 17 Sep 2012 07:57:22 +0200 (CEST)
Date: Mon, 17 Sep 2012 07:49:04 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120917054904.GP25990@game.jcrosoft.org>
References: <1347827613-25769-1-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347827613-25769-1-git-send-email-franck.jullien@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] [v2] filetype: Improve FAT detection
To: Franck Jullien <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

On 22:33 Sun 16 Sep     , Franck Jullien wrote:
> We may have some disk with MBR as a first sector. In this case, the
> current FAT check returns an error. However, the FAT sector exist and
> the MBR can tell us where it is.
> 
> This patch add to file_name_detect_type function the ability to find
> the FAT boot sector on the first sector of the first partition in case
> it is not on sector 0.
> 
> It also introduce is_fat_boot_sector to check if a buffer is a FAT boot
> sector.
can you try

mount /dev/disk0.0 /mnt

does this work?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
