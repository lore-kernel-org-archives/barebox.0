Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cm5ZO-00067e-3s
 for barebox@lists.infradead.org; Thu, 09 Mar 2017 21:26:02 +0000
Date: Thu, 9 Mar 2017 22:18:08 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20170309211808.w6jazqlbrlfigl2r@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: e1000 driver hangs during probe
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Hello,

I work with an i.MX6 based hardware that has an i210 pcie device with
barebox 2016.11.0 (but there didn't happen anything relevant since them
if I'm not mistaken). When enabling all necessary things to make the
e1000 bind, the driver seems to hang. The problem is the following code
in e1000_get_hw_eeprom_semaphore():

        /* Get the FW semaphore. */
        timeout =3D hw->eeprom.word_size + 1;
        while (timeout) {
                swsm =3D e1000_read_reg(hw, E1000_SWSM);
                swsm |=3D E1000_SWSM_SWESMBI;
                e1000_write_reg(hw, E1000_SWSM, swsm);
                /* if we managed to set the bit we got the semaphore. */
                swsm =3D e1000_read_reg(hw, E1000_SWSM);
                if (swsm & E1000_SWSM_SWESMBI)
                        break;

                udelay(50);
                timeout--;
        }

together with the fact that hw->eeprom.word_size is either 0x200000 or
0x400000. (I saw both values already in three runs) This value is setup
in e1000_init_eeprom_params() in the hw->mac_type =3D=3D e1000_igb case.

When waiting log enough the code finally terminates with a failure.

In my case there is an 8Mb-Flash equipped on NVM_* that isn't programmed
yet. (M25PE80, Page size: 256 bytes, Subsector erase: 4KB, Sector erase: 64=
KB,
Bulk erase: 8Mb)

Is someone able to shed some light on where the problem is?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
