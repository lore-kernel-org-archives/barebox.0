Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt0-x243.google.com ([2607:f8b0:400d:c0d::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1emgGW-0000Uf-KZ
 for barebox@lists.infradead.org; Fri, 16 Feb 2018 13:41:34 +0000
Received: by mail-qt0-x243.google.com with SMTP id v90so998239qte.12
 for <barebox@lists.infradead.org>; Fri, 16 Feb 2018 05:41:17 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20180205171815.19272-1-andrew.smirnov@gmail.com>
References: <20180205171815.19272-1-andrew.smirnov@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 16 Feb 2018 05:41:15 -0800
Message-ID: <CAHQ1cqHnh5Trq6DxPFUbL4LwVJ2npFMuLF7yEG-bzKOiFMYu6A@mail.gmail.com>
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
Subject: Re: [PATCH] partitions: Align partition numbering with that of Linux
 kernel
To: Barebox List <barebox@lists.infradead.org>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

On Mon, Feb 5, 2018 at 9:18 AM, Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
> Change the way Barebox numbers DOS/EFI partitions, such that it would
> be consistent with how Linux kernel does it. With this change:
>
>   - Both types of partitions are numbered starting from 1, not 0
>
>   - Extended DOS partitions always start from 5, leaving first 4 to
>     non-extended ones.
>

Sascha, any opinion on this patch?

Thanks,
Andrey Smirnov

> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  common/partitions.c        | 7 +++----
>  common/partitions/dos.c    | 2 ++
>  common/partitions/efi.c    | 1 +
>  common/partitions/parser.h | 1 +
>  4 files changed, 7 insertions(+), 4 deletions(-)
>
> diff --git a/common/partitions.c b/common/partitions.c
> index 574b31fbb..53d55a49a 100644
> --- a/common/partitions.c
> +++ b/common/partitions.c
> @@ -42,8 +42,7 @@ static LIST_HEAD(partition_parser_list);
>   * @param no Partition number
>   * @return 0 on success
>   */
> -static int register_one_partition(struct block_device *blk,
> -                                       struct partition *part, int no)
> +static int register_one_partition(struct block_device *blk, struct partition *part)
>  {
>         char *partition_name;
>         int ret;
> @@ -51,7 +50,7 @@ static int register_one_partition(struct block_device *blk,
>         uint64_t size = part->size * SECTOR_SIZE;
>         struct cdev *cdev;
>
> -       partition_name = basprintf("%s.%d", blk->cdev.name, no);
> +       partition_name = basprintf("%s.%d", blk->cdev.name, part->number);
>         if (!partition_name)
>                 return -ENOMEM;
>         dev_dbg(blk->dev, "Registering partition %s on drive %s\n",
> @@ -150,7 +149,7 @@ int parse_partition_table(struct block_device *blk)
>
>         /* at least one partition description found */
>         for (i = 0; i < pdesc->used_entries; i++) {
> -               rc = register_one_partition(blk, &pdesc->parts[i], i);
> +               rc = register_one_partition(blk, &pdesc->parts[i]);
>                 if (rc != 0)
>                         dev_err(blk->dev,
>                                 "Failed to register partition %d on %s (%d)\n",
> diff --git a/common/partitions/dos.c b/common/partitions/dos.c
> index 488c2936f..2ee9b2bd6 100644
> --- a/common/partitions/dos.c
> +++ b/common/partitions/dos.c
> @@ -170,6 +170,7 @@ static void dos_extended_partition(struct block_device *blk, struct partition_de
>                         get_unaligned_le32(&table[0].partition_start);
>                 pd->parts[n].size = get_unaligned_le32(&table[0].partition_size);
>                 pd->parts[n].dos_partition_type = table[0].type;
> +               pd->parts[n].number = partno;
>                 if (signature)
>                         sprintf(pd->parts[n].partuuid, "%08x-%02u",
>                                 signature, partno);
> @@ -224,6 +225,7 @@ static void dos_partition(void *buf, struct block_device *blk,
>                         pd->parts[n].first_sec = pentry.first_sec;
>                         pd->parts[n].size = pentry.size;
>                         pd->parts[n].dos_partition_type = pentry.dos_partition_type;
> +                       pd->parts[n].number = i + 1;
>                         if (signature)
>                                 sprintf(pd->parts[n].partuuid, "%08x-%02d",
>                                                 signature, i + 1);
> diff --git a/common/partitions/efi.c b/common/partitions/efi.c
> index 88734f166..5dc9e1ad8 100644
> --- a/common/partitions/efi.c
> +++ b/common/partitions/efi.c
> @@ -456,6 +456,7 @@ static void efi_partition(void *buf, struct block_device *blk,
>                 pentry = &pd->parts[pd->used_entries];
>                 pentry->first_sec = le64_to_cpu(ptes[i].starting_lba);
>                 pentry->size = le64_to_cpu(ptes[i].ending_lba) - pentry->first_sec;
> +               pentry->number = pd->used_entries + 1;
>                 pentry->size++;
>                 part_set_efi_name(&ptes[i], pentry->name);
>                 snprintf(pentry->partuuid, sizeof(pentry->partuuid), "%pUl", &ptes[i].unique_partition_guid);
> diff --git a/common/partitions/parser.h b/common/partitions/parser.h
> index 8ad134a9a..713933794 100644
> --- a/common/partitions/parser.h
> +++ b/common/partitions/parser.h
> @@ -20,6 +20,7 @@ struct partition {
>         char partuuid[MAX_PARTUUID_STR];
>         uint64_t first_sec;
>         uint64_t size;
> +       int number;
>  };
>
>  struct partition_desc {
> --
> 2.14.3
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
