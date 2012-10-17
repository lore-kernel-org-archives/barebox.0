Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qa0-f49.google.com ([209.85.216.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOX1Q-00036w-Vu
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 17:03:09 +0000
Received: by mail-qa0-f49.google.com with SMTP id a17so633956qae.15
 for <barebox@lists.infradead.org>; Wed, 17 Oct 2012 10:03:07 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CA+pW49pE4oHFFC4=8UzDm+KTfYVVKWGzcmUT6n+Sza2HkeUL-A@mail.gmail.com>
References: <CA+pW49pE4oHFFC4=8UzDm+KTfYVVKWGzcmUT6n+Sza2HkeUL-A@mail.gmail.com>
Date: Wed, 17 Oct 2012 22:33:06 +0530
Message-ID: <CA+pW49qyh2q7Y7Q2xvCGLot+o6O7oqzur++Z-4+5nhXMFz6KMA@mail.gmail.com>
From: Madhu koriginja <madhava.koriginja@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2835251491861490496=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: How to flash ubi image from barebox
To: barebox@lists.infradead.org

--===============2835251491861490496==
Content-Type: multipart/alternative; boundary=047d7b6da4cc995c6a04cc443e98

--047d7b6da4cc995c6a04cc443e98
Content-Type: text/plain; charset=ISO-8859-1

>>2) I executed the below commands from barebox
>>#erase /dev/nand0.rootfs.bb
>>#ubiattach /dev/nand0.rootfs
>> After this command it created the /dev/ubi0
>>#ubimkvol /dev/ubi0 rootfs 0
>>   After this command it created the /dev/ubi0.rootfs
>>After these commands I copied the ubifs image on to the /dev/ubi0.rootfs.
>> #tftp root.ubifs /dev/ubi0.rootfs
>>Now I booted the kernel, in this method, I am getting the error like the
volume layout not found.
VID headers are empty they are not updated, only the volume table 1 and 2
VID headers are updated and in which LEB the data is written those VID
headers are updated. Rest of the PEB VID headers are empty. Volume rb tree
is empty. Because of this I am getting the error "the layout volume was not
found".

On Wed, Oct 17, 2012 at 4:41 PM, Madhu koriginja <
madhava.koriginja@gmail.com> wrote:

> Hi All,
>              Please help me how to flash the ubi image from barebox.
> I generated the ubifs image using the mkfs.jffs2, then I created the ubi
> image using the ubinize. I am trying to flash this ubi image on NAND.
>
> I tried in two ways
> 1) I flashed the UBI image directly on /dev/nand0.rootfs.bb(erased the
> partition before flash).
> In this method I am getting the errors like below
>
> Freeing init memory: 152K
> [   15.420000] UBI warning: ubi_io_read_vid_hdr: bad magic number at PEB
> 255: 7d6be97d instead of 55424921
> [   15.430000] UBI warning: ubi_eba_copy_leb: error 3 while reading VID
> header back from PEB 255
> [   15.510000] UBI: run torture test for PEB 255
> [   19.430000] UBI error: torture_peb: read problems on freshly erased PEB
> 255, must be bad
> [   19.440000] UBI error: erase_worker: failed to erase PEB 255, error -5
> [   19.440000] UBI: mark PEB 255 as bad
> [   19.450000] UBI: 1 PEBs left in the reserve
> [   20.690000] UBI warning: ubi_io_read_vid_hdr: bad magic number at PEB
> 254: 7d6be97d instead of 55424921
> [   20.700000] UBI warning: ubi_eba_copy_leb: error 3 while reading VID
> header back from PEB 254
> [   20.710000] UBI: run torture test for PEB 254
> [   24.630000] UBI error: torture_peb: read problems on freshly erased PEB
> 254, must be bad
> [   24.640000] UBI error: erase_worker: failed to erase PEB 254, error -5
> [   24.640000] UBI: mark PEB 254 as bad
> [   24.650000] UBI warning: erase_worker: last PEB from the reserved pool
> was used
> [   26.030000] UBI warning: ubi_io_read_vid_hdr: bad magic number at PEB
> 253: 7d6be97d instead of 55424921
> [   26.040000] UBI warning: ubi_eba_copy_leb: error 3 while reading VID
> header back from PEB 253
> [   26.050000] UBI: run torture test for PEB 253
> [   29.980000] UBI error: torture_peb: read problems on freshly erased PEB
> 253, must be bad
> [   29.990000] UBI error: erase_worker: failed to erase PEB 253, error -5
> [   30.000000] UBI error: erase_worker: no reserved physical eraseblocks
> [   30.010000] UBI warning: ubi_ro_mode: switch to read-only mode
> [   30.010000] Backtrace:
> [   30.010000] [<c000c528>] (dump_backtrace+0x0/0x110) from [<c038df94>]
> (dump_stack+0x18/0x1c)
> [   30.020000]  r6:dfac2b30 r5:dfac2800 r4:fffffffb r3:c04d93dc
> [   30.030000] [<c038df7c>] (dump_stack+0x0/0x1c) from [<c023f05c>]
> (erase_worker+0x55c/0x5c8)
> [   30.040000] [<c023eb00>] (erase_worker+0x0/0x5c8) from [<c023f858>]
> (do_work+0xd8/0x114)
> [   30.040000] [<c023f780>] (do_work+0x0/0x114) from [<c02400dc>]
> (ubi_thread+0x10c/0x19c)
> [   30.050000]  r7:00000000 r6:00000000 r5:dfb84000 r4:dfac2800
> [   30.060000] [<c023ffd0>] (ubi_thread+0x0/0x19c) from [<c0049f18>]
> (kthread+0x90/0x98)
> [   30.070000] [<c0049e88>] (kthread+0x0/0x98) from [<c002f654>]
> (do_exit+0x0/0x69c)
> [   30.070000]  r6:c002f654 r5:c0049e88 r4:df82ded4
> [   30.080000] UBI error: do_work: work failed with error code -5
> [   30.080000] UBI error: ubi_thread: ubi_bgt0d: work failed with error
> code -5
>
> 2) I executed the below commands from barebox
> #erase /dev/nand0.rootfs.bb
> #ubiattach /dev/nand0.rootfs
>  After this command it created the /dev/ubi0
> #ubimkvol /dev/ubi0 rootfs 0
>    After this command it created the /dev/ubi0.rootfs
> After these commands I copied the ubifs image on to the /dev/ubi0.rootfs.
>  #tftp root.ubifs /dev/ubi0.rootfs
> Now I booted the kernel, in this method, I am getting the error like the
> volume layout not found.
>
> Please tell me which method is correct. If the above two methods are not
> correct, please suggest me the correct method.
>
> Thanks
>
>

--047d7b6da4cc995c6a04cc443e98
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>&gt;&gt;2) I executed the below commands from barebox</div><div>&gt;&g=
t;#erase /dev/<a href=3D"http://nand0.rootfs.bb/" target=3D"_blank">nand0.r=
ootfs.bb</a></div><div>&gt;&gt;#ubiattach /dev/nand0.rootfs</div><div>&gt;&=
gt; After this command it created the /dev/ubi0</div>
<div>&gt;&gt;#ubimkvol /dev/ubi0 rootfs 0</div><div>&gt;&gt; =A0 After this=
 command it created the /dev/ubi0.rootfs</div><div>&gt;&gt;After these comm=
ands I copied the ubifs image on to the /dev/ubi0.rootfs.</div><div>&gt;&gt=
; #tftp root.ubifs /dev/ubi0.rootfs</div>
<div>&gt;&gt;Now I booted the kernel, in this method, I am getting the erro=
r like the volume layout not found.</div><div>VID headers are empty they ar=
e not updated, only the volume table 1 and 2 VID headers are updated and in=
 which LEB the data is written those VID headers are updated. Rest of the P=
EB VID headers are empty. Volume rb tree is empty. Because of this I am get=
ting the error &quot;the layout volume was not found&quot;.</div>
<br><div class=3D"gmail_quote">On Wed, Oct 17, 2012 at 4:41 PM, Madhu korig=
inja <span dir=3D"ltr">&lt;<a href=3D"mailto:madhava.koriginja@gmail.com" t=
arget=3D"_blank">madhava.koriginja@gmail.com</a>&gt;</span> wrote:<br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex">
Hi All,<div>=A0 =A0 =A0 =A0 =A0 =A0 =A0Please help me how to flash the ubi =
image from barebox.</div><div>I generated the ubifs image using the mkfs.jf=
fs2, then I created the ubi image using the ubinize. I am trying to flash t=
his ubi image on NAND.</div>

<div><br></div><div>I tried in two ways</div><div>1) I flashed the UBI imag=
e directly on /dev/<a href=3D"http://nand0.rootfs.bb" target=3D"_blank">nan=
d0.rootfs.bb</a>(erased the partition before flash).=A0</div><div>In this m=
ethod I am getting the errors like below</div>

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
 from barebox</div><div>#erase /dev/<a href=3D"http://nand0.rootfs.bb" targ=
et=3D"_blank">nand0.rootfs.bb</a></div>

<div>#ubiattach /dev/nand0.rootfs</div><div>=A0After this command it create=
d the /dev/ubi0</div><div>#ubimkvol /dev/ubi0 rootfs 0</div><div>=A0 =A0Aft=
er this command it created the /dev/ubi0.rootfs</div><div>After these comma=
nds I copied the ubifs image on to the /dev/ubi0.rootfs.</div>

<div>=A0#tftp root.ubifs /dev/ubi0.rootfs</div><div>Now I booted the kernel=
, in this method, I am getting the error like the volume layout not found.<=
/div><div><br></div><div>Please tell me which method is correct. If the abo=
ve two methods are not correct, please suggest me the correct method.</div>

<div><br></div><div>Thanks</div><div><br></div>
</blockquote></div><br>

--047d7b6da4cc995c6a04cc443e98--


--===============2835251491861490496==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2835251491861490496==--
