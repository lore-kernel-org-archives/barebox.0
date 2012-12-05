Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.cvg.de ([62.153.82.30])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgGCm-0001fJ-Pq
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 14:44:09 +0000
Received: from ensc-virt.intern.sigma-chemnitz.de
 (ensc-virt.intern.sigma-chemnitz.de [192.168.3.24])
 by mail.cvg.de (8.14.4/8.14.4) with ESMTP id qB5EhwkW032355
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
 for <barebox@lists.infradead.org>; Wed, 5 Dec 2012 15:43:59 +0100
Received: from ensc by ensc-virt.intern.sigma-chemnitz.de with local (Exim
 4.76) (envelope-from <ensc@sigma-chemnitz.de>) id 1TgGCc-0003XB-IA
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 15:43:58 +0100
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
References: <1354622569-7673-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
 <1354622569-7673-2-git-send-email-enrico.scholz@sigma-chemnitz.de>
Date: Wed, 05 Dec 2012 15:43:58 +0100
In-Reply-To: <1354622569-7673-2-git-send-email-enrico.scholz@sigma-chemnitz.de>
 (Enrico Scholz's message of "Tue, 4 Dec 2012 13:02:49 +0100")
Message-ID: <lyobi88spd.fsf@ensc-virt.intern.sigma-chemnitz.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] OMAP: disable unaligned access when building the IFT
To: barebox@lists.infradead.org

Enrico Scholz
<enrico.scholz-wttK6gPy29v+Hn7q9Vec/7NAH6kLmebB@public.gmane.org>
writes:

> Patch sets the ARM_NOUNALIGNED option introduced by a previous patch.

just for the record: difference between both aligned/unaligned variants
is

$ bloat-o-meter barebox barebox.unaligned 
add/remove: 0/0 grow/shrink: 1/32 up/down: 4/-2648 (-2644)
function                                     old     new   delta
show_progress                                292     296      +4
usb_new_device                              1980    1972      -8
usb_get_configuration_no                     156     148      -8
rpc_req                                      232     220     -12
ping_send                                    152     140     -12
parse_partition_table                        776     764     -12
net_icmp_send                                 64      52     -12
dhcp_handler                                 700     684     -16
net_udp_send                                  56      36     -20
usb_control_msg                              164     140     -24
ubi_io_write_vid_hdr                         140     116     -24
ubi_eba_read_leb                             640     616     -24
ubi_change_vtbl_record                       208     184     -24
net_udp_new                                  136     112     -24
net_ip_send                                  156     120     -36
erase_worker                                 900     856     -44
ubi_scan_erase_peb                           220     172     -48
tftp_handler                                 752     688     -64
validate_vid_hdr                             212     140     -72
ubi_io_write_ec_hdr                          208     136     -72
net_receive                                  920     848     -72
ubi_scan                                    1596    1504     -92
ubi_cdev_ioctl                               236     140     -96
ubi_read_volume_table                       2072    1968    -104
create_vtbl                                  664     560    -104
vtbl_check                                   816     696    -120
ubi_io_read_ec_hdr                           660     516    -144
ubi_create_volume                           1276    1108    -168
ubi_eba_copy_leb                             904     712    -192
ubi_io_read_vid_hdr                          856     660    -196
ubi_eba_write_leb                           1628    1412    -216
ubi_eba_write_leb_st                         944     704    -240
ubi_scan_add_used                           1872    1524    -348



Enrico

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
