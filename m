Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qc0-f177.google.com ([209.85.216.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TDUVj-0001ZP-TW
 for barebox@lists.infradead.org; Mon, 17 Sep 2012 06:08:48 +0000
Received: by qcsu28 with SMTP id u28so4544878qcs.36
 for <barebox@lists.infradead.org>; Sun, 16 Sep 2012 23:08:45 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120917054904.GP25990@game.jcrosoft.org>
References: <1347827613-25769-1-git-send-email-franck.jullien@gmail.com>
 <20120917054904.GP25990@game.jcrosoft.org>
Date: Mon, 17 Sep 2012 08:08:45 +0200
Message-ID: <CAJfOKBwfT5DiCbjUDRu1R9x07rJtN=8NWJ-c7vQP6EnqCXGdaw@mail.gmail.com>
From: Franck Jullien <franck.jullien@gmail.com>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

2012/9/17 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>:
> On 22:33 Sun 16 Sep     , Franck Jullien wrote:
>> We may have some disk with MBR as a first sector. In this case, the
>> current FAT check returns an error. However, the FAT sector exist and
>> the MBR can tell us where it is.
>>
>> This patch add to file_name_detect_type function the ability to find
>> the FAT boot sector on the first sector of the first partition in case
>> it is not on sector 0.
>>
>> It also introduce is_fat_boot_sector to check if a buffer is a FAT boot
>> sector.
> can you try
>
> mount /dev/disk0.0 /mnt
>
> does this work?
>
> Best Regards,
> J.

Yes it works. However, I don't have partitions, I use mount /dev/disk0 /mnt.
I tested with MBR and FAT as first sector (two different cards) and
with/without -t fat option.

Franck.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
