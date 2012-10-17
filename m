Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TORXg-00089U-Pq
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 11:12:06 +0000
Received: by mail-la0-f49.google.com with SMTP id z14so4830010lag.36
 for <barebox@lists.infradead.org>; Wed, 17 Oct 2012 04:12:00 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 17 Oct 2012 16:41:59 +0530
Message-ID: <CA+pW49pE4oHFFC4=8UzDm+KTfYVVKWGzcmUT6n+Sza2HkeUL-A@mail.gmail.com>
From: Madhu koriginja <madhava.koriginja@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2257538416928014126=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: How to flash ubi image from barebox
To: barebox@lists.infradead.org

--===============2257538416928014126==
Content-Type: multipart/alternative; boundary=90e6ba10a7dfe8168c04cc3f56e3

--90e6ba10a7dfe8168c04cc3f56e3
Content-Type: text/plain; charset=ISO-8859-1

Hi All,
             Please help me how to flash the ubi image from barebox.
I generated the ubifs image using the mkfs.jffs2, then I created the ubi
image using the ubinize. I am trying to flash this ubi image on NAND.

I tried in two ways
1) I flashed the UBI image directly on /dev/nand0.rootfs.bb(erased the
partition before flash).
In this method I am getting the errors like below

Freeing init memory: 152K
[   15.420000] UBI warning: ubi_io_read_vid_hdr: bad magic number at PEB
255: 7d6be97d instead of 55424921
[   15.430000] UBI warning: ubi_eba_copy_leb: error 3 while reading VID
header back from PEB 255
[   15.510000] UBI: run torture test for PEB 255
[   19.430000] UBI error: torture_peb: read problems on freshly erased PEB
255, must be bad
[   19.440000] UBI error: erase_worker: failed to erase PEB 255, error -5
[   19.440000] UBI: mark PEB 255 as bad
[   19.450000] UBI: 1 PEBs left in the reserve
[   20.690000] UBI warning: ubi_io_read_vid_hdr: bad magic number at PEB
254: 7d6be97d instead of 55424921
[   20.700000] UBI warning: ubi_eba_copy_leb: error 3 while reading VID
header back from PEB 254
[   20.710000] UBI: run torture test for PEB 254
[   24.630000] UBI error: torture_peb: read problems on freshly erased PEB
254, must be bad
[   24.640000] UBI error: erase_worker: failed to erase PEB 254, error -5
[   24.640000] UBI: mark PEB 254 as bad
[   24.650000] UBI warning: erase_worker: last PEB from the reserved pool
was used
[   26.030000] UBI warning: ubi_io_read_vid_hdr: bad magic number at PEB
253: 7d6be97d instead of 55424921
[   26.040000] UBI warning: ubi_eba_copy_leb: error 3 while reading VID
header back from PEB 253
[   26.050000] UBI: run torture test for PEB 253
[   29.980000] UBI error: torture_peb: read problems on freshly erased PEB
253, must be bad
[   29.990000] UBI error: erase_worker: failed to erase PEB 253, error -5
[   30.000000] UBI error: erase_worker: no reserved physical eraseblocks
[   30.010000] UBI warning: ubi_ro_mode: switch to read-only mode
[   30.010000] Backtrace:
[   30.010000] [<c000c528>] (dump_backtrace+0x0/0x110) from [<c038df94>]
(dump_stack+0x18/0x1c)
[   30.020000]  r6:dfac2b30 r5:dfac2800 r4:fffffffb r3:c04d93dc
[   30.030000] [<c038df7c>] (dump_stack+0x0/0x1c) from [<c023f05c>]
(erase_worker+0x55c/0x5c8)
[   30.040000] [<c023eb00>] (erase_worker+0x0/0x5c8) from [<c023f858>]
(do_work+0xd8/0x114)
[   30.040000] [<c023f780>] (do_work+0x0/0x114) from [<c02400dc>]
(ubi_thread+0x10c/0x19c)
[   30.050000]  r7:00000000 r6:00000000 r5:dfb84000 r4:dfac2800
[   30.060000] [<c023ffd0>] (ubi_thread+0x0/0x19c) from [<c0049f18>]
(kthread+0x90/0x98)
[   30.070000] [<c0049e88>] (kthread+0x0/0x98) from [<c002f654>]
(do_exit+0x0/0x69c)
[   30.070000]  r6:c002f654 r5:c0049e88 r4:df82ded4
[   30.080000] UBI error: do_work: work failed with error code -5
[   30.080000] UBI error: ubi_thread: ubi_bgt0d: work failed with error
code -5

2) I executed the below commands from barebox
#erase /dev/nand0.rootfs.bb
#ubiattach /dev/nand0.rootfs
 After this command it created the /dev/ubi0
#ubimkvol /dev/ubi0 rootfs 0
   After this command it created the /dev/ubi0.rootfs
After these commands I copied the ubifs image on to the /dev/ubi0.rootfs.
 #tftp root.ubifs /dev/ubi0.rootfs
Now I booted the kernel, in this method, I am getting the error like the
volume layout not found.

Please tell me which method is correct. If the above two methods are not
correct, please suggest me the correct method.

Thanks

--90e6ba10a7dfe8168c04cc3f56e3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi All,<div>=A0 =A0 =A0 =A0 =A0 =A0 =A0Please help me how to flash the ubi =
image from barebox.</div><div>I generated the ubifs image using the mkfs.jf=
fs2, then I created the ubi image using the ubinize. I am trying to flash t=
his ubi image on NAND.</div>
<div><br></div><div>I tried in two ways</div><div>1) I flashed the UBI imag=
e directly on /dev/<a href=3D"http://nand0.rootfs.bb">nand0.rootfs.bb</a>(e=
rased the partition before flash).=A0</div><div>In this method I am getting=
 the errors like below</div>
<div><br></div><div><div>Freeing init memory: 152K</div><div>[ =A0 15.42000=
0] UBI warning: ubi_io_read_vid_hdr: bad magic number at PEB 255: 7d6be97d =
instead of 55424921</div><div>[ =A0 15.430000] UBI warning: ubi_eba_copy_le=
b: error 3 while reading VID header back from PEB 255</div>
<div>[ =A0 15.510000] UBI: run torture test for PEB 255</div><div>[ =A0 19.=
430000] UBI error: torture_peb: read problems on freshly erased PEB 255, mu=
st be bad</div><div>[ =A0 19.440000] UBI error: erase_worker: failed to era=
se PEB 255, error -5</div>
<div>[ =A0 19.440000] UBI: mark PEB 255 as bad</div><div>[ =A0 19.450000] U=
BI: 1 PEBs left in the reserve</div><div>[ =A0 20.690000] UBI warning: ubi_=
io_read_vid_hdr: bad magic number at PEB 254: 7d6be97d instead of 55424921<=
/div>
<div>[ =A0 20.700000] UBI warning: ubi_eba_copy_leb: error 3 while reading =
VID header back from PEB 254</div><div>[ =A0 20.710000] UBI: run torture te=
st for PEB 254</div><div>[ =A0 24.630000] UBI error: torture_peb: read prob=
lems on freshly erased PEB 254, must be bad</div>
<div>[ =A0 24.640000] UBI error: erase_worker: failed to erase PEB 254, err=
or -5</div><div>[ =A0 24.640000] UBI: mark PEB 254 as bad</div><div>[ =A0 2=
4.650000] UBI warning: erase_worker: last PEB from the reserved pool was us=
ed</div>
<div>[ =A0 26.030000] UBI warning: ubi_io_read_vid_hdr: bad magic number at=
 PEB 253: 7d6be97d instead of 55424921</div><div>[ =A0 26.040000] UBI warni=
ng: ubi_eba_copy_leb: error 3 while reading VID header back from PEB 253</d=
iv>
<div>[ =A0 26.050000] UBI: run torture test for PEB 253</div><div>[ =A0 29.=
980000] UBI error: torture_peb: read problems on freshly erased PEB 253, mu=
st be bad</div><div>[ =A0 29.990000] UBI error: erase_worker: failed to era=
se PEB 253, error -5</div>
<div>[ =A0 30.000000] UBI error: erase_worker: no reserved physical erasebl=
ocks</div><div>[ =A0 30.010000] UBI warning: ubi_ro_mode: switch to read-on=
ly mode</div><div>[ =A0 30.010000] Backtrace:</div><div>[ =A0 30.010000] [&=
lt;c000c528&gt;] (dump_backtrace+0x0/0x110) from [&lt;c038df94&gt;] (dump_s=
tack+0x18/0x1c)</div>
<div>[ =A0 30.020000] =A0r6:dfac2b30 r5:dfac2800 r4:fffffffb r3:c04d93dc</d=
iv><div>[ =A0 30.030000] [&lt;c038df7c&gt;] (dump_stack+0x0/0x1c) from [&lt=
;c023f05c&gt;] (erase_worker+0x55c/0x5c8)</div><div>[ =A0 30.040000] [&lt;c=
023eb00&gt;] (erase_worker+0x0/0x5c8) from [&lt;c023f858&gt;] (do_work+0xd8=
/0x114)</div>
<div>[ =A0 30.040000] [&lt;c023f780&gt;] (do_work+0x0/0x114) from [&lt;c024=
00dc&gt;] (ubi_thread+0x10c/0x19c)</div><div>[ =A0 30.050000] =A0r7:0000000=
0 r6:00000000 r5:dfb84000 r4:dfac2800</div><div>[ =A0 30.060000] [&lt;c023f=
fd0&gt;] (ubi_thread+0x0/0x19c) from [&lt;c0049f18&gt;] (kthread+0x90/0x98)=
</div>
<div>[ =A0 30.070000] [&lt;c0049e88&gt;] (kthread+0x0/0x98) from [&lt;c002f=
654&gt;] (do_exit+0x0/0x69c)</div><div>[ =A0 30.070000] =A0r6:c002f654 r5:c=
0049e88 r4:df82ded4</div><div>[ =A0 30.080000] UBI error: do_work: work fai=
led with error code -5</div>
<div>[ =A0 30.080000] UBI error: ubi_thread: ubi_bgt0d: work failed with er=
ror code -5</div></div><div><br></div><div>2) I executed the below commands=
 from barebox</div><div>#erase /dev/<a href=3D"http://nand0.rootfs.bb">nand=
0.rootfs.bb</a></div>
<div>#ubiattach /dev/nand0.rootfs</div><div>=A0After this command it create=
d the /dev/ubi0</div><div>#ubimkvol /dev/ubi0 rootfs 0</div><div>=A0 =A0Aft=
er this command it created the /dev/ubi0.rootfs</div><div>After these comma=
nds I copied the ubifs image on to the /dev/ubi0.rootfs.</div>
<div>=A0#tftp root.ubifs /dev/ubi0.rootfs</div><div>Now I booted the kernel=
, in this method, I am getting the error like the volume layout not found.<=
/div><div><br></div><div>Please tell me which method is correct. If the abo=
ve two methods are not correct, please suggest me the correct method.</div>
<div><br></div><div>Thanks</div><div><br></div>

--90e6ba10a7dfe8168c04cc3f56e3--


--===============2257538416928014126==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2257538416928014126==--
