Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ru4AR-0002rp-DX
 for barebox@lists.infradead.org; Sun, 05 Feb 2012 15:38:18 +0000
Date: Sun, 5 Feb 2012 10:37:59 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20120205155201.4086003e@eb-e6520>
Message-ID: <alpine.DEB.2.02.1202051026020.9491@oneiric>
References: <alpine.DEB.2.02.1202050635190.30340@oneiric>
 <20120205155201.4086003e@eb-e6520>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1831542169-1328456284=:9491"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: how do i add the defn for the beagle xM to barebox?
To: =?ISO-8859-15?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1831542169-1328456284=:9491
Content-Type: TEXT/PLAIN; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Sun, 5 Feb 2012, Eric B=E9nard wrote:

> Hi Robert,
>
> Le Sun, 5 Feb 2012 06:52:28 -0500 (EST),
> "Robert P. J. Day" <rpjday@crashcourse.ca> a =E9crit :
> >   thoughts?  i'd actually like to make the tweaks one at a time so
> > that the git log shows clearly how the two boards differ one feature
> > at a time.
>
> By sensing a few GPIO, you can easily check which board you are running
> barebox on and thus have ony binary which supports all beagleboards
> (as already done in u-boot).
>
> Check around line 108 in u-boot's beagle support for the details :
> http://git.denx.de/?p=3Du-boot.git;a=3Dblob;f=3Dboard/ti/beagle/beagle.c;=
h=3D5c04b34e1ab0140aca93e7752c8672ce7aebc0b9;hb=3DHEAD
>
> So in the end you can register the nand support only if you run on a
> board which has a NAND flash and have one defconfig for all
> beagleboards (some tweaks in the clock settings may be nedded -
> especially for USB IIRC - as beagle XM is built around a DM3730 which
> can run at 1GHz when older beagles had older OMAP3530 limited to
> 720MHz).

  hmmmm ... i see one possible problem that maybe means i just haven't
read far enough.  in u-boot, in that beagle.c file, here's a chunk of
code that identifies the NAND chip, of which there is none on the xM:

/*
         * We need to identify what PoP memory is on the board so that
         * we know what timings to use.  If we can't identify it then
         * we know it's an xM.  To map the ID values please see nand_ids.c
         */
        identify_nand_chip(&pop_mfr, &pop_id);

        *mr =3D MICRON_V_MR_165;
        switch (get_board_revision()) {
        case REVISION_C4:
                if (pop_mfr =3D=3D NAND_MFR_STMICRO && pop_id =3D=3D 0xba) =
{
                        /* 512MB DDR */
                        *mcfg =3D NUMONYX_V_MCFG_165(512 << 20);
                        *ctrla =3D NUMONYX_V_ACTIMA_165;
                        *ctrlb =3D NUMONYX_V_ACTIMB_165;
                        *rfr_ctrl =3D SDP_3430_SDRC_RFR_CTRL_165MHz;
                        break;
                } else if (pop_mfr =3D=3D NAND_MFR_MICRON && pop_id =3D=3D =
0xbc) {
                        /* Beagleboard Rev C5, 256MB DDR */
                        *mcfg =3D MICRON_V_MCFG_200(256 << 20);
                        *ctrla =3D MICRON_V_ACTIMA_200;
                        *ctrlb =3D MICRON_V_ACTIMB_200;
                        *rfr_ctrl =3D SDP_3430_SDRC_RFR_CTRL_200MHz;
                        break;
                }
        case REVISION_XM_A:
        case REVISION_XM_B:
        case REVISION_XM_C:
                if (pop_mfr =3D=3D 0) {
                        /* 256MB DDR */
                        *mcfg =3D MICRON_V_MCFG_200(256 << 20);
                        *ctrla =3D MICRON_V_ACTIMA_200;
                        *ctrlb =3D MICRON_V_ACTIMB_200;
                        *rfr_ctrl =3D SDP_3430_SDRC_RFR_CTRL_200MHz;
                } else {
                        /* 512MB DDR */
                        *mcfg =3D NUMONYX_V_MCFG_165(512 << 20);
                        *ctrla =3D NUMONYX_V_ACTIMA_165;
                        *ctrlb =3D NUMONYX_V_ACTIMB_165;
                        *rfr_ctrl =3D SDP_3430_SDRC_RFR_CTRL_165MHz;
                }
                break;
=09=09... snip ...

  ok, i can see how that works, but if you need to test this way, it
means that you'll constantly be overriding the CONFIG settings in the
beagle defconfig file.

  if i read you correctly, then one should be able to use the same
defconfig file for both a regular beagle and an xM.  but the current
barebox beagle xload defconfig file contains stuff like:

CONFIG_MTD=3Dy
# CONFIG_MTD_WRITE is not set
# CONFIG_MTD_OOB_DEVICE is not set
CONFIG_NAND=3Dy
# CONFIG_NAND_ECC_SOFT is not set
# CONFIG_NAND_ECC_HW_SYNDROME is not set
# CONFIG_NAND_ECC_HW_NONE is not set
# CONFIG_NAND_INFO is not set
# CONFIG_NAND_BBT is not set
CONFIG_NAND_OMAP_GPMC=3Dy

which is fine for a regular beagle but totally wrong for an xM.  does
this mean that, with an xM, i'd include the same (incorrect) defconfig
file, and have to be constantly overriding some of those settings?

  i can see how getting the board revision lets you test how to do
things differently across a related set of boards.  but the difference
between a regular beagle and an xM is *sizable* when you're talking
about NAND versus no NAND.  ideally, i'd like to have that board
revision test available in the defconfig file itself. :-)

  in any event, what's the proper approach to this?  am i making
sense?  is the solution to have different defconfig files for an xM?

rday

--=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--8323329-1831542169-1328456284=:9491
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--8323329-1831542169-1328456284=:9491--
