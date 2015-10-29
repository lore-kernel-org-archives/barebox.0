Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZrmqK-0006kE-F7
 for barebox@lists.infradead.org; Thu, 29 Oct 2015 13:02:14 +0000
Received: by lbjm5 with SMTP id m5so27814274lbj.3
 for <barebox@lists.infradead.org>; Thu, 29 Oct 2015 06:01:48 -0700 (PDT)
Date: Thu, 29 Oct 2015 16:04:09 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20151029160409.2ad22e14@berta>
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
Subject: [BUG] ata: disk_ata_drive: SSD drive doesn't pass check for ata id
 validity
To: Barebox List <barebox@lists.infradead.org>

Hi!

Barebox refuses to deal with OCZ-VERTEX4 ssd sata drive, because:
	ata1: ata id invalid

This error is triggered by the following piece of code :

static int ata_id_is_valid(const uint16_t *id)
{
	if ((id[ATA_ID_FIELD_VALID] & 1) == 0) {
		pr_debug("Drive's ID seems invalid\n");
		return -EINVAL;
	}

	return 0;
}

The "id" is a sector-sized block of bytes, received after
issuing ATA_CMD_ID_ATA command.

If I remove this check, the drive works fine.

Can someone with better knowledge of ATA standard comment on this
issue?

Regards,
Peter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
