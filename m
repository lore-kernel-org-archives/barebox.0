Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gg0-f177.google.com ([209.85.161.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SZMYf-0001fG-C3
 for barebox@lists.infradead.org; Tue, 29 May 2012 13:33:58 +0000
Received: by ggcs5 with SMTP id s5so2835603ggc.36
 for <barebox@lists.infradead.org>; Tue, 29 May 2012 06:33:56 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAONxwYPuBCkUE2M6MgpgG7sJQjsYJ8WYhgfhaGUju4f7xcL89g@mail.gmail.com>
References: <CAONxwYP5Eu59tpndafUpJrbHNMgZTF_3JaJ2pr5i8ptDugdpBQ@mail.gmail.com>
 <20120529101450.GS30400@pengutronix.de>
 <CAONxwYN5yj9wVnmpXQAkgnwZ-zdDxETKMr4x6CFcUjiN_ih5Nw@mail.gmail.com>
 <CAONxwYPuBCkUE2M6MgpgG7sJQjsYJ8WYhgfhaGUju4f7xcL89g@mail.gmail.com>
From: Roberto Nibali <rnibali@gmail.com>
Date: Tue, 29 May 2012 15:33:35 +0200
Message-ID: <CAONxwYOgrfE6KxjFSKB+5kyEw_=S6_JdaJ3xD6oD5Vg2mJG4hg@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5076230633928292313=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [BUG: barebox-git] failure at common/block.c:248/block_put()!
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============5076230633928292313==
Content-Type: multipart/alternative; boundary=e89a8f3bac1fdb4f5a04c12ce2ec

--e89a8f3bac1fdb4f5a04c12ce2ec
Content-Type: text/plain; charset=ISO-8859-1

More information ...


> I am pretty sure we need to switch to 1BIT transfer and/or using the SDHCI_BROKEN_TIMEOUT_VAL
> quirk. I'll try to find out if I can add this functionality to barebox,
> unless you believe there's something else which causes this behaviour.
>
> I'll keep investigating ...
>

Added more debugging information, which pretty much pinpoints the culprit
from a software point of view:

diff --git a/common/block.c b/common/block.c
index 4253fc4..5e0b50a 100644
--- a/common/block.c
+++ b/common/block.c
@@ -142,6 +142,7 @@ static int block_cache(struct block_device *blk, int
block)
        num_blocks = min(blk->rdbufsize, blk->num_blocks -
chunk->block_start);

        ret = blk->ops->read(blk, chunk->data, chunk->block_start,
num_blocks);
+       printf("%s: blk->ops->read returned %d\n", __func__, ret);
        if (ret) {
                list_add_tail(&chunk->list, &blk->idle_blocks);
                return ret;
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index ae3c805..024e18e 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -24,6 +24,9 @@
  * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
  * MA 02111-1307 USA
  */
+
+#define DEBUG
+
 #include <config.h>
 #include <common.h>
 #include <driver.h>
@@ -239,6 +242,7 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd
*cmd, struct mci_data *data
        struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
        struct fsl_esdhc *regs = host->regs;
        int ret;
+       int loop;

        esdhc_write32(&regs->irqstat, -1);

@@ -280,6 +284,18 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd
*cmd, struct mci_data *dat
        /* Wait for the command to complete */
        ret = wait_on_timeout(100 * MSECOND,
                        esdhc_read32(&regs->irqstat) & IRQSTAT_CC);
+       loop = 1;
+       while (ret && loop <=10) {
+               printf("%s: busy loop %d start\n", __func__, loop);
+               ret = wait_on_timeout(100 * MSECOND,
+                       esdhc_read32(&regs->irqstat) & IRQSTAT_CC);
+               printf("%s: busy loop %d end, cap=0x%08x, irqstat=0x%08x,
prsstat=0x%08x\n",
+                       __func__, loop,
+                       esdhc_read32(&host->regs->hostcapblt),
+                       esdhc_read32(&regs->irqstat),
+                       esdhc_read32(&regs->prsstat));
+               loop++;
+       }
        if (ret) {
                dev_err(host->dev, "timeout 1\n");
                return -ETIMEDOUT;

It clearly hangs because the IRQSTAT_CC is never set in &regs->irqstat.
Now, I am not familiar enough with the quirks of the ESDHC technology to
know why the host never receives or sees the IRQ of a command complete,
however this behaviour pretty much renders my eSDHC interface unusable. See
output below:

sid1-noah:/ mount /dev/disk0.0 fat /mnt
block_cache: blk->ops->read returned 0
sid1-noah:/ cp /mnt/conblock_cache: blk->ops->read returned 0
sole_image.jffs2 /mnt/console_image.jffs2-backup
block_cache: blk->ops->read returned 0
block_cache: blk->ops->read returned 0
block_cache: blk->ops->read returned 0
block_cache: blk->ops->read returned 0
block_cache: blk->ops->read returned 0
block_cache: blk->ops->read returned 0

Data Write Failed in PIO Mode.imx-esdhc@imx-esdhc0: timeout 2
esdhc_send_cmd: busy loop 1 start
esdhc_send_cmd: busy loop 1 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
esdhc_send_cmd: busy loop 2 start
esdhc_send_cmd: busy loop 2 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
esdhc_send_cmd: busy loop 3 start
esdhc_send_cmd: busy loop 3 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
esdhc_send_cmd: busy loop 4 start
esdhc_send_cmd: busy loop 4 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
esdhc_send_cmd: busy loop 5 start
esdhc_send_cmd: busy loop 5 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
esdhc_send_cmd: busy loop 6 start
esdhc_send_cmd: busy loop 6 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
esdhc_send_cmd: busy loop 7 start
esdhc_send_cmd: busy loop 7 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
esdhc_send_cmd: busy loop 8 start
esdhc_send_cmd: busy loop 8 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
esdhc_send_cmd: busy loop 9 start
esdhc_send_cmd: busy loop 9 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
esdhc_send_cmd: busy loop 10 start
esdhc_send_cmd: busy loop 10 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
imx-esdhc@imx-esdhc0: timeout 1
esdhc_send_cmd: busy loop 1 start
esdhc_send_cmd: busy loop 1 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
esdhc_send_cmd: busy loop 2 start
esdhc_send_cmd: busy loop 2 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
esdhc_send_cmd: busy loop 3 start
esdhc_send_cmd: busy loop 3 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
esdhc_send_cmd: busy loop 4 start
esdhc_send_cmd: busy loop 4 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
esdhc_send_cmd: busy loop 5 start
esdhc_send_cmd: busy loop 5 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
esdhc_send_cmd: busy loop 6 start
esdhc_send_cmd: busy loop 6 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
esdhc_send_cmd: busy loop 7 start
esdhc_send_cmd: busy loop 7 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
esdhc_send_cmd: busy loop 8 start
esdhc_send_cmd: busy loop 8 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
esdhc_send_cmd: busy loop 9 start
esdhc_send_cmd: busy loop 9 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
esdhc_send_cmd: busy loop 10 start
esdhc_send_cmd: busy loop 10 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
imx-esdhc@imx-esdhc0: timeout 1
esdhc_send_cmd: busy loop 1 start
esdhc_send_cmd: busy loop 1 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
esdhc_send_cmd: busy loop 2 start
esdhc_send_cmd: busy loop 2 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
esdhc_send_cmd: busy loop 3 start
esdhc_send_cmd: busy loop 3 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
esdhc_send_cmd: busy loop 4 start
esdhc_send_cmd: busy loop 4 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
esdhc_send_cmd: busy loop 5 start
esdhc_send_cmd: busy loop 5 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
esdhc_send_cmd: busy loop 6 start
esdhc_send_cmd: busy loop 6 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
esdhc_send_cmd: busy loop 7 start
esdhc_send_cmd: busy loop 7 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
esdhc_send_cmd: busy loop 8 start
esdhc_send_cmd: busy loop 8 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
esdhc_send_cmd: busy loop 9 start
esdhc_send_cmd: busy loop 9 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
esdhc_send_cmd: busy loop 10 start
esdhc_send_cmd: busy loop 10 end, cap=0x07f30000, irqstat=0x00000000,
prsstat=0xf7880587
imx-esdhc@imx-esdhc0: timeout 1
block_cache: blk->ops->read returned -110
BUG: failure at common/block.c:249/block_put()!
BUG!
[<83f349a4>] (unwind_backtrace+0x0/0x9c) from [<83f1c094>] (panic+0x28/0x3c)
[<83f1c094>] (panic+0x28/0x3c) from [<83f05900>] (block_put+0x48/0x8c)
[<83f05900>] (block_put+0x48/0x8c) from [<83f059ec>]
(block_write+0xa8/0x120)
[<83f059ec>] (block_write+0xa8/0x120) from [<83f2d478>]
(cdev_write+0x30/0x34)
[<83f2d478>] (cdev_write+0x30/0x34) from [<83f30970>] (disk_write+0x24/0x30)
[<83f30970>] (disk_write+0x24/0x30) from [<83f2fabc>] (f_write+0x160/0x27c)
[<83f2fabc>] (f_write+0x160/0x27c) from [<83f30730>] (fat_write+0x18/0x30)
[<83f30730>] (fat_write+0x18/0x30) from [<83f31220>] (write+0xac/0xd0)
[<83f31220>] (write+0xac/0xd0) from [<83f21864>] (copy_file+0xec/0x17c)
[<83f21864>] (copy_file+0xec/0x17c) from [<83f191e0>] (do_cp+0x124/0x158)
[<83f191e0>] (do_cp+0x124/0x158) from [<83f07bb0>]
(execute_command+0x38/0x7c)
[<83f07bb0>] (execute_command+0x38/0x7c) from [<83f03bc8>]
(run_list_real+0x8a0/0x998)
[<83f03bc8>] (run_list_real+0x8a0/0x998) from [<83f03e04>]
(parse_stream_outer+0x144/0x240)
[<83f03e04>] (parse_stream_outer+0x144/0x240) from [<83f041fc>]
(run_shell+0x3c/0x5c)
[<83f041fc>] (run_shell+0x3c/0x5c) from [<83f09640>]
(start_barebox+0xd4/0x110)
[<83f09640>] (start_barebox+0xd4/0x110) from [<8010206c>] (0x8010206c)

Removing the loop<=10 limit throws the code into a livelock.

Any suggestions?

Cheers
Roberto

--e89a8f3bac1fdb4f5a04c12ce2ec
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

More information ...<br>=A0<br><div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div><div class=3D"gmail_quote"><div>I am pretty sure we need=
 to switch to 1BIT transfer and/or using the=A0<span style=3D"font-family:V=
erdana,Arial,Helvetica">SDHCI_BROKEN_TIMEOUT_VAL quirk. I&#39;ll try to fin=
d out if I can add this functionality to barebox, unless you believe there&=
#39;s something else which causes this behaviour.</span></div>


<div><span style=3D"font-family:Verdana,Arial,Helvetica"><br></span></div><=
div><span style=3D"font-family:Verdana,Arial,Helvetica">I&#39;ll keep inves=
tigating ...</span></div></div></div></blockquote><div><br></div><div>Added=
 more debugging information, which pretty much pinpoints the culprit from a=
 software point of view:=A0</div>

<div><br></div><div><div>diff --git a/common/block.c b/common/block.c</div>=
<div>index 4253fc4..5e0b50a 100644</div><div>--- a/common/block.c</div><div=
>+++ b/common/block.c</div><div>@@ -142,6 +142,7 @@ static int block_cache(=
struct block_device *blk, int block)</div>

<div>=A0 =A0 =A0 =A0 num_blocks =3D min(blk-&gt;rdbufsize, blk-&gt;num_bloc=
ks - chunk-&gt;block_start);</div><div>=A0</div><div>=A0 =A0 =A0 =A0 ret =
=3D blk-&gt;ops-&gt;read(blk, chunk-&gt;data, chunk-&gt;block_start, num_bl=
ocks);</div><div>+ =A0 =A0 =A0 printf(&quot;%s: blk-&gt;ops-&gt;read return=
ed %d\n&quot;, __func__, ret);</div>

<div>=A0 =A0 =A0 =A0 if (ret) {</div><div>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 l=
ist_add_tail(&amp;chunk-&gt;list, &amp;blk-&gt;idle_blocks);</div><div>=A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 return ret;</div><div>diff --git a/drivers/mci/=
imx-esdhc.c b/drivers/mci/imx-esdhc.c</div>

<div>index ae3c805..024e18e 100644</div><div>--- a/drivers/mci/imx-esdhc.c<=
/div><div>+++ b/drivers/mci/imx-esdhc.c</div><div>@@ -24,6 +24,9 @@</div><d=
iv>=A0 * Foundation, Inc., 59 Temple Place, Suite 330, Boston,</div><div>

=A0 * MA 02111-1307 USA</div><div>=A0 */</div><div>+</div><div>+#define DEB=
UG</div><div>+</div><div>=A0#include &lt;config.h&gt;</div><div>=A0#include=
 &lt;common.h&gt;</div><div>=A0#include &lt;driver.h&gt;</div><div>@@ -239,=
6 +242,7 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struc=
t mci_data *data</div>

<div>=A0 =A0 =A0 =A0 struct fsl_esdhc_host *host =3D to_fsl_esdhc(mci);</di=
v><div>=A0 =A0 =A0 =A0 struct fsl_esdhc *regs =3D host-&gt;regs;</div><div>=
=A0 =A0 =A0 =A0 int ret;</div><div>+ =A0 =A0 =A0 int loop;</div><div>=A0</d=
iv><div>=A0 =A0 =A0 =A0 esdhc_write32(&amp;regs-&gt;irqstat, -1);</div>

<div>=A0</div><div>@@ -280,6 +284,18 @@ esdhc_send_cmd(struct mci_host *mci=
, struct mci_cmd *cmd, struct mci_data *dat</div><div>=A0 =A0 =A0 =A0 /* Wa=
it for the command to complete */</div><div>=A0 =A0 =A0 =A0 ret =3D wait_on=
_timeout(100 * MSECOND,</div>

<div>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 esdhc_read32(&amp;regs=
-&gt;irqstat) &amp; IRQSTAT_CC);</div><div>+ =A0 =A0 =A0 loop =3D 1;</div><=
div>+ =A0 =A0 =A0 while (ret &amp;&amp; loop &lt;=3D10) {</div><div>+ =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 printf(&quot;%s: busy loop %d start\n&quot;, __func=
__, loop);</div>

<div>+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 ret =3D wait_on_timeout(100 * MSECOND,</=
div><div>+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 esdhc_read32(&amp;re=
gs-&gt;irqstat) &amp; IRQSTAT_CC);</div><div>+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
printf(&quot;%s: busy loop %d end, cap=3D0x%08x, irqstat=3D0x%08x, prsstat=
=3D0x%08x\n&quot;,</div>

<div>+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 __func__, loop,</div><di=
v>+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 esdhc_read32(&amp;host-&gt;=
regs-&gt;hostcapblt),</div><div>+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 esdhc_read32(&amp;regs-&gt;irqstat),</div><div>+ =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 esdhc_read32(&amp;regs-&gt;prsstat));</div>

<div>+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 loop++;</div><div>+ =A0 =A0 =A0 }</div><=
div>=A0 =A0 =A0 =A0 if (ret) {</div><div>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 de=
v_err(host-&gt;dev, &quot;timeout 1\n&quot;);</div><div>=A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 return -ETIMEDOUT;</div></div><div><br></div>

<div>It clearly hangs because the IRQSTAT_CC is never set in &amp;regs-&gt;=
irqstat. Now, I am not familiar enough with the quirks of the ESDHC technol=
ogy to know why the host never receives or sees the IRQ of a command comple=
te, however this behaviour pretty much renders my eSDHC interface unusable.=
 See output below:</div>

<div><br></div><div>sid1-noah:/ mount /dev/disk0.0 fat /mnt</div><div>block=
_cache: blk-&gt;ops-&gt;read returned 0</div><div>sid1-noah:/ cp /mnt/conbl=
ock_cache: blk-&gt;ops-&gt;read returned 0</div><div>sole_image.jffs2 /mnt/=
console_image.jffs2-backup</div>

<div>block_cache: blk-&gt;ops-&gt;read returned 0</div><div>block_cache: bl=
k-&gt;ops-&gt;read returned 0</div><div>block_cache: blk-&gt;ops-&gt;read r=
eturned 0</div><div>block_cache: blk-&gt;ops-&gt;read returned 0</div>
<div>
block_cache: blk-&gt;ops-&gt;read returned 0</div><div>block_cache: blk-&gt=
;ops-&gt;read returned 0</div><div><br></div><div>Data Write Failed in PIO =
Mode.imx-esdhc@imx-esdhc0: timeout 2</div><div>esdhc_send_cmd: busy loop 1 =
start</div>

<div>esdhc_send_cmd: busy loop 1 end, cap=3D0x07f30000, irqstat=3D0x0000000=
0, prsstat=3D0xf7880587</div><div>esdhc_send_cmd: busy loop 2 start</div><d=
iv>esdhc_send_cmd: busy loop 2 end, cap=3D0x07f30000, irqstat=3D0x00000000,=
 prsstat=3D0xf7880587</div>

<div>esdhc_send_cmd: busy loop 3 start</div><div>esdhc_send_cmd: busy loop =
3 end, cap=3D0x07f30000, irqstat=3D0x00000000, prsstat=3D0xf7880587</div><d=
iv>esdhc_send_cmd: busy loop 4 start</div><div>esdhc_send_cmd: busy loop 4 =
end, cap=3D0x07f30000, irqstat=3D0x00000000, prsstat=3D0xf7880587</div>

<div>esdhc_send_cmd: busy loop 5 start</div><div>esdhc_send_cmd: busy loop =
5 end, cap=3D0x07f30000, irqstat=3D0x00000000, prsstat=3D0xf7880587</div><d=
iv>esdhc_send_cmd: busy loop 6 start</div><div>esdhc_send_cmd: busy loop 6 =
end, cap=3D0x07f30000, irqstat=3D0x00000000, prsstat=3D0xf7880587</div>

<div>esdhc_send_cmd: busy loop 7 start</div><div>esdhc_send_cmd: busy loop =
7 end, cap=3D0x07f30000, irqstat=3D0x00000000, prsstat=3D0xf7880587</div><d=
iv>esdhc_send_cmd: busy loop 8 start</div><div>esdhc_send_cmd: busy loop 8 =
end, cap=3D0x07f30000, irqstat=3D0x00000000, prsstat=3D0xf7880587</div>

<div>esdhc_send_cmd: busy loop 9 start</div><div>esdhc_send_cmd: busy loop =
9 end, cap=3D0x07f30000, irqstat=3D0x00000000, prsstat=3D0xf7880587</div><d=
iv>esdhc_send_cmd: busy loop 10 start</div><div>esdhc_send_cmd: busy loop 1=
0 end, cap=3D0x07f30000, irqstat=3D0x00000000, prsstat=3D0xf7880587</div>

<div>imx-esdhc@imx-esdhc0: timeout 1</div><div>esdhc_send_cmd: busy loop 1 =
start</div><div>esdhc_send_cmd: busy loop 1 end, cap=3D0x07f30000, irqstat=
=3D0x00000000, prsstat=3D0xf7880587</div><div>esdhc_send_cmd: busy loop 2 s=
tart</div>

<div>esdhc_send_cmd: busy loop 2 end, cap=3D0x07f30000, irqstat=3D0x0000000=
0, prsstat=3D0xf7880587</div><div>esdhc_send_cmd: busy loop 3 start</div><d=
iv>esdhc_send_cmd: busy loop 3 end, cap=3D0x07f30000, irqstat=3D0x00000000,=
 prsstat=3D0xf7880587</div>

<div>esdhc_send_cmd: busy loop 4 start</div><div>esdhc_send_cmd: busy loop =
4 end, cap=3D0x07f30000, irqstat=3D0x00000000, prsstat=3D0xf7880587</div><d=
iv>esdhc_send_cmd: busy loop 5 start</div><div>esdhc_send_cmd: busy loop 5 =
end, cap=3D0x07f30000, irqstat=3D0x00000000, prsstat=3D0xf7880587</div>

<div>esdhc_send_cmd: busy loop 6 start</div><div>esdhc_send_cmd: busy loop =
6 end, cap=3D0x07f30000, irqstat=3D0x00000000, prsstat=3D0xf7880587</div><d=
iv>esdhc_send_cmd: busy loop 7 start</div><div>esdhc_send_cmd: busy loop 7 =
end, cap=3D0x07f30000, irqstat=3D0x00000000, prsstat=3D0xf7880587</div>

<div>esdhc_send_cmd: busy loop 8 start</div><div>esdhc_send_cmd: busy loop =
8 end, cap=3D0x07f30000, irqstat=3D0x00000000, prsstat=3D0xf7880587</div><d=
iv>esdhc_send_cmd: busy loop 9 start</div><div>esdhc_send_cmd: busy loop 9 =
end, cap=3D0x07f30000, irqstat=3D0x00000000, prsstat=3D0xf7880587</div>

<div>esdhc_send_cmd: busy loop 10 start</div><div>esdhc_send_cmd: busy loop=
 10 end, cap=3D0x07f30000, irqstat=3D0x00000000, prsstat=3D0xf7880587</div>=
<div>imx-esdhc@imx-esdhc0: timeout 1</div><div>esdhc_send_cmd: busy loop 1 =
start</div>

<div>esdhc_send_cmd: busy loop 1 end, cap=3D0x07f30000, irqstat=3D0x0000000=
0, prsstat=3D0xf7880587</div><div>esdhc_send_cmd: busy loop 2 start</div><d=
iv>esdhc_send_cmd: busy loop 2 end, cap=3D0x07f30000, irqstat=3D0x00000000,=
 prsstat=3D0xf7880587</div>

<div>esdhc_send_cmd: busy loop 3 start</div><div>esdhc_send_cmd: busy loop =
3 end, cap=3D0x07f30000, irqstat=3D0x00000000, prsstat=3D0xf7880587</div><d=
iv>esdhc_send_cmd: busy loop 4 start</div><div>esdhc_send_cmd: busy loop 4 =
end, cap=3D0x07f30000, irqstat=3D0x00000000, prsstat=3D0xf7880587</div>

<div>esdhc_send_cmd: busy loop 5 start</div><div>esdhc_send_cmd: busy loop =
5 end, cap=3D0x07f30000, irqstat=3D0x00000000, prsstat=3D0xf7880587</div><d=
iv>esdhc_send_cmd: busy loop 6 start</div><div>esdhc_send_cmd: busy loop 6 =
end, cap=3D0x07f30000, irqstat=3D0x00000000, prsstat=3D0xf7880587</div>

<div>esdhc_send_cmd: busy loop 7 start</div><div>esdhc_send_cmd: busy loop =
7 end, cap=3D0x07f30000, irqstat=3D0x00000000, prsstat=3D0xf7880587</div><d=
iv>esdhc_send_cmd: busy loop 8 start</div><div>esdhc_send_cmd: busy loop 8 =
end, cap=3D0x07f30000, irqstat=3D0x00000000, prsstat=3D0xf7880587</div>

<div>esdhc_send_cmd: busy loop 9 start</div><div>esdhc_send_cmd: busy loop =
9 end, cap=3D0x07f30000, irqstat=3D0x00000000, prsstat=3D0xf7880587</div><d=
iv>esdhc_send_cmd: busy loop 10 start</div><div>esdhc_send_cmd: busy loop 1=
0 end, cap=3D0x07f30000, irqstat=3D0x00000000, prsstat=3D0xf7880587</div>

<div>imx-esdhc@imx-esdhc0: timeout 1</div><div>block_cache: blk-&gt;ops-&gt=
;read returned -110</div><div>BUG: failure at common/block.c:249/block_put(=
)!</div><div>BUG!</div><div>[&lt;83f349a4&gt;] (unwind_backtrace+0x0/0x9c) =
from [&lt;83f1c094&gt;] (panic+0x28/0x3c)</div>

<div>[&lt;83f1c094&gt;] (panic+0x28/0x3c) from [&lt;83f05900&gt;] (block_pu=
t+0x48/0x8c)</div><div>[&lt;83f05900&gt;] (block_put+0x48/0x8c) from [&lt;8=
3f059ec&gt;] (block_write+0xa8/0x120)</div><div>[&lt;83f059ec&gt;] (block_w=
rite+0xa8/0x120) from [&lt;83f2d478&gt;] (cdev_write+0x30/0x34)</div>

<div>[&lt;83f2d478&gt;] (cdev_write+0x30/0x34) from [&lt;83f30970&gt;] (dis=
k_write+0x24/0x30)</div><div>[&lt;83f30970&gt;] (disk_write+0x24/0x30) from=
 [&lt;83f2fabc&gt;] (f_write+0x160/0x27c)</div><div>[&lt;83f2fabc&gt;] (f_w=
rite+0x160/0x27c) from [&lt;83f30730&gt;] (fat_write+0x18/0x30)</div>

<div>[&lt;83f30730&gt;] (fat_write+0x18/0x30) from [&lt;83f31220&gt;] (writ=
e+0xac/0xd0)</div><div>[&lt;83f31220&gt;] (write+0xac/0xd0) from [&lt;83f21=
864&gt;] (copy_file+0xec/0x17c)</div><div>[&lt;83f21864&gt;] (copy_file+0xe=
c/0x17c) from [&lt;83f191e0&gt;] (do_cp+0x124/0x158)</div>

<div>[&lt;83f191e0&gt;] (do_cp+0x124/0x158) from [&lt;83f07bb0&gt;] (execut=
e_command+0x38/0x7c)</div><div>[&lt;83f07bb0&gt;] (execute_command+0x38/0x7=
c) from [&lt;83f03bc8&gt;] (run_list_real+0x8a0/0x998)</div><div>[&lt;83f03=
bc8&gt;] (run_list_real+0x8a0/0x998) from [&lt;83f03e04&gt;] (parse_stream_=
outer+0x144/0x240)</div>

<div>[&lt;83f03e04&gt;] (parse_stream_outer+0x144/0x240) from [&lt;83f041fc=
&gt;] (run_shell+0x3c/0x5c)</div><div>[&lt;83f041fc&gt;] (run_shell+0x3c/0x=
5c) from [&lt;83f09640&gt;] (start_barebox+0xd4/0x110)</div><div>[&lt;83f09=
640&gt;] (start_barebox+0xd4/0x110) from [&lt;8010206c&gt;] (0x8010206c)</d=
iv>

<div><br></div><div>Removing the loop&lt;=3D10 limit throws the code into a=
 livelock.</div><div><br></div><div>Any suggestions?</div><div><br></div><d=
iv>Cheers</div><div>Roberto</div></div>

--e89a8f3bac1fdb4f5a04c12ce2ec--


--===============5076230633928292313==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5076230633928292313==--
