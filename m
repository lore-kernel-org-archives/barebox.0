Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RCVS0-0007tA-B7
	for barebox@lists.infradead.org; Sat, 08 Oct 2011 11:52:21 +0000
Received: by bkat2 with SMTP id t2so7372482bka.36
	for <barebox@lists.infradead.org>; Sat, 08 Oct 2011 04:52:17 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 8 Oct 2011 13:52:17 +0200
Message-ID: <CAJeSw6Dm6Q698WJdQXCoE5trjYhN8e9iNR_zXqFUw2C=aPouEw@mail.gmail.com>
From: Fabian van der Werf <fvanderwerf@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2096779087=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: pandaboard boot issue
To: barebox@lists.infradead.org

--===============2096779087==
Content-Type: multipart/alternative; boundary=00151743f83c849e6104aec83018

--00151743f83c849e6104aec83018
Content-Type: text/plain; charset=ISO-8859-1

Hi,


I ran into problems trying to boot the pandaboard, which I think is the same
others reported on this list. After printing the pandaboard revision number
execution simply stops. I traced the problem to an unaligned access in
disk_register_partitions(). Barebox loads first sector of the disk in
memory. The offset of the partition table is 446 (decimal) which causes the
entire partition table to be unaligned.

Below is a simple patch. Though, I am not sure whether this is the right
fix, because this would affect all arm platforms and I would expect that
such a bug would be noted earlier. I fiddled a little with the alignment bit
in the System Control Register, but without success. I have to admit that I
don't yet fully understand the behaviour of this bit.

Does someone else have any ideas? Or is my patch acceptable?


Kind regards,

Fabian van der Werf


From f98e14b971e0269251d8694be4c7b0254a30bc52 Mon Sep 17 00:00:00 2001
From: Fabian van der Werf <fvanderwerf@gmail.com>
Date: Sat, 8 Oct 2011 13:34:30 +0200
Subject: [PATCH] Fixed unaligned access

---
 drivers/ata/disk_drive.c |   15 ++++++++++-----
 1 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/ata/disk_drive.c b/drivers/ata/disk_drive.c
index 14b5e66..6a5dc87 100644
--- a/drivers/ata/disk_drive.c
+++ b/drivers/ata/disk_drive.c
@@ -38,6 +38,7 @@
 #include <malloc.h>
 #include <common.h>
 #include <block.h>
+#include <asm/unaligned.h>

 /**
  * Description of one partition table entry (D*S type)
@@ -97,25 +98,29 @@ static int disk_register_partitions(struct device_d
*dev, struct partition_entry
     int part_order[4] = {0, 1, 2, 3};
     int i, rc;
     char drive_name[16], partition_name[19];
+    u32 partition_start, partition_size;

     /* TODO order the partitions */

     for (i = 0; i < 4; i++) {
+        partition_start =
get_unaligned(&table[part_order[i]].partition_start);
+        partition_size  =
get_unaligned(&table[part_order[i]].partition_size);
+
         sprintf(drive_name, "%s%d", dev->name, dev->id);
         sprintf(partition_name, "%s%d.%d", dev->name, dev->id, i);
-        if (table[part_order[i]].partition_start != 0) {
+        if (partition_start != 0) {
 #if 1
 /* ignore partitions we can't handle due to 32 bit limits */
-            if (table[part_order[i]].partition_start > 0x7fffff)
+            if (partition_start > 0x7fffff)
                 continue;
-            if (table[part_order[i]].partition_size > 0x7fffff)
+            if (partition_size > 0x7fffff)
                 continue;
 #endif
             dev_dbg(dev, "Registering partition %s to drive %s\n",
                 partition_name, drive_name);
             rc = devfs_add_partition(drive_name,
-                table[part_order[i]].partition_start * SECTOR_SIZE,
-                table[part_order[i]].partition_size * SECTOR_SIZE,
+                partition_start * SECTOR_SIZE,
+                partition_size * SECTOR_SIZE,
                 DEVFS_PARTITION_FIXED, partition_name);
             if (rc != 0)
                 dev_err(dev, "Failed to register partition %s (%d)\n",
partition_name, rc);
-- 
1.7.0.4

--00151743f83c849e6104aec83018
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<br><br><br>I ran into problems trying to boot the pandaboard, which I t=
hink is the same others reported on this list. After printing the pandaboar=
d revision number execution simply stops. I traced the problem to an unalig=
ned access in disk_register_partitions(). Barebox loads first sector of the=
 disk in memory. The offset of the partition table is 446 (decimal) which c=
auses the entire partition table to be unaligned.<br>

<br>Below is a simple patch. Though, I am not sure whether this is the righ=
t fix, because this would affect all arm platforms and I would expect that =
such a bug would be noted earlier. I fiddled a little with the alignment bi=
t in the System Control Register, but without success. I have to admit that=
 I don&#39;t yet fully understand the behaviour of this bit.<br>

<br>Does someone else have any ideas? Or is my patch acceptable?<br><br><br=
>Kind regards,<br><br>Fabian van der Werf<br><br><br>From f98e14b971e026925=
1d8694be4c7b0254a30bc52 Mon Sep 17 00:00:00 2001<br>From: Fabian van der We=
rf &lt;<a href=3D"mailto:fvanderwerf@gmail.com" target=3D"_blank">fvanderwe=
rf@gmail.com</a>&gt;<br>

Date: Sat, 8 Oct 2011 13:34:30 +0200<br>Subject: [PATCH] Fixed unaligned ac=
cess<br><br>---<br>=A0drivers/ata/disk_drive.c |=A0=A0 15 ++++++++++-----<b=
r>=A01 files changed, 10 insertions(+), 5 deletions(-)<br><br>diff --git a/=
drivers/ata/disk_drive.c b/drivers/ata/disk_drive.c<br>

index 14b5e66..6a5dc87 100644<br>--- a/drivers/ata/disk_drive.c<br>+++ b/dr=
ivers/ata/disk_drive.c<br>@@ -38,6 +38,7 @@<br>=A0#include &lt;malloc.h&gt;=
<br>=A0#include &lt;common.h&gt;<br>=A0#include &lt;block.h&gt;<br>+#includ=
e &lt;asm/unaligned.h&gt;<br>

=A0<br>=A0/**<br>=A0 * Description of one partition table entry (D*S type)<=
br>@@ -97,25 +98,29 @@ static int disk_register_partitions(struct device_d =
*dev, struct partition_entry<br>=A0=A0=A0=A0 int part_order[4] =3D {0, 1, 2=
, 3};<br>=A0=A0=A0=A0 int i, rc;<br>

=A0=A0=A0=A0 char drive_name[16], partition_name[19];<br>+=A0=A0=A0 u32 par=
tition_start, partition_size;<br>=A0<br>=A0=A0=A0=A0 /* TODO order the part=
itions */<br>=A0<br>=A0=A0=A0=A0 for (i =3D 0; i &lt; 4; i++) {<br>+=A0=A0=
=A0 =A0=A0=A0 partition_start =3D get_unaligned(&amp;table[part_order[i]].p=
artition_start);<br>

+=A0=A0=A0 =A0=A0=A0 partition_size=A0 =3D get_unaligned(&amp;table[part_or=
der[i]].partition_size);<br>+<br>=A0=A0=A0=A0 =A0=A0=A0 sprintf(drive_name,=
 &quot;%s%d&quot;, dev-&gt;name, dev-&gt;id);<br>=A0=A0=A0=A0 =A0=A0=A0 spr=
intf(partition_name, &quot;%s%d.%d&quot;, dev-&gt;name, dev-&gt;id, i);<br>

-=A0=A0=A0 =A0=A0=A0 if (table[part_order[i]].partition_start !=3D 0) {<br>=
+=A0=A0=A0 =A0=A0=A0 if (partition_start !=3D 0) {<br>=A0#if 1<br>=A0/* ign=
ore partitions we can&#39;t handle due to 32 bit limits */<br>-=A0=A0=A0 =
=A0=A0=A0 =A0=A0=A0 if (table[part_order[i]].partition_start &gt; 0x7fffff)=
<br>

+=A0=A0=A0 =A0=A0=A0 =A0=A0=A0 if (partition_start &gt; 0x7fffff)<br>=A0=A0=
=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0=A0=A0 continue;<br>-=A0=A0=A0 =A0=A0=A0 =A0=
=A0=A0 if (table[part_order[i]].partition_size &gt; 0x7fffff)<br>+=A0=A0=A0=
 =A0=A0=A0 =A0=A0=A0 if (partition_size &gt; 0x7fffff)<br>=A0=A0=A0=A0 =A0=
=A0=A0 =A0=A0=A0 =A0=A0=A0 continue;<br>

=A0#endif<br>=A0=A0=A0=A0 =A0=A0=A0 =A0=A0=A0 dev_dbg(dev, &quot;Registerin=
g partition %s to drive %s\n&quot;,<br>=A0=A0=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0=
=A0=A0 partition_name, drive_name);<br>=A0=A0=A0=A0 =A0=A0=A0 =A0=A0=A0 rc =
=3D devfs_add_partition(drive_name,<br>-=A0=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0=
=A0=A0 table[part_order[i]].partition_start * SECTOR_SIZE,<br>

-=A0=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0=A0=A0 table[part_order[i]].partition_siz=
e * SECTOR_SIZE,<br>+=A0=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0=A0=A0 partition_star=
t * SECTOR_SIZE,<br>+=A0=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0=A0=A0 partition_size=
 * SECTOR_SIZE,<br>=A0=A0=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0=A0=A0 DEVFS_PARTITI=
ON_FIXED, partition_name);<br>

=A0=A0=A0=A0 =A0=A0=A0 =A0=A0=A0 if (rc !=3D 0)<br>=A0=A0=A0=A0 =A0=A0=A0 =
=A0=A0=A0 =A0=A0=A0 dev_err(dev, &quot;Failed to register partition %s (%d)=
\n&quot;, partition_name, rc);<br>-- <br>1.7.0.4<br><br>

--00151743f83c849e6104aec83018--


--===============2096779087==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2096779087==--
