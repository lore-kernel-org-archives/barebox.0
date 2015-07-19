Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22f.google.com ([2a00:1450:4010:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZGusV-0007m3-TE
 for barebox@lists.infradead.org; Sun, 19 Jul 2015 20:08:43 +0000
Received: by lahh5 with SMTP id h5so86540778lah.2
 for <barebox@lists.infradead.org>; Sun, 19 Jul 2015 13:07:42 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 19 Jul 2015 23:07:15 +0300
Message-Id: <1437336443-8076-9-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1437336443-8076-1-git-send-email-antonynpavlov@gmail.com>
References: <1437336443-8076-1-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC v2 08/16] net: import picotcp from github
To: barebox@lists.infradead.org

Original repo: https://github.com/tass-belgium/picotcp

The last original repo commit is v1.5.0

    commit f6d139147d86d74f9a53ba3c02b2a5b276858d95
    Author: laurens <laurens@localhost.localdomain>
    Date:   Thu Jun 25 12:54:38 2015 +0100

        Remove old check from fragments module

from development branch

Import mini-howto:

    $ cd barebox.git
    $ rm -rf net/picotcp
    $ git clone --branch ${branch_name} ${PICOTCP_REPO} net/picotcp
    $ rm -rf net/picotcp/*
    $ ( cd net/picotcp; git checkout .gitignore COPYING LICENSE README.md )
    $ ( cd net/picotcp; mkdir include modules stack )
    $ ( cd net/picotcp/include; git checkout heap.h pico_addressing.h pico_config.h pico_constants.h pico_device.h pico_eth.h pico_frame.h pico_module_eth.h pico_protocol.h pico_queue.h pico_socket.h pico_socket_multicast.h pico_stack.h pico_tree.h )
    $ ( cd net/picotcp/modules; git checkout pico_aodv.h pico_arp.c pico_arp.h pico_dev_loop.c pico_dev_loop.h pico_dev_mock.h pico_dev_null.c pico_dev_null.h pico_dhcp_client.c pico_dhcp_client.h pico_dhcp_common.c pico_dhcp_common.h pico_dns_client.h pico_dns_common.h pico_dns_sd.h pico_fragments.c pico_fragments.h pico_icmp4.c pico_icmp4.h pico_icmp6.h pico_igmp.h pico_ipfilter.h pico_ipv4.c pico_ipv4.h pico_ipv6.h pico_ipv6_nd.h pico_mm.h pico_nat.h pico_olsr.h pico_socket_tcp.h pico_socket_udp.c pico_socket_udp.h pico_tcp.h pico_udp.c pico_udp.h )
    $ ( cd net/picotcp/stack; git checkout pico_device.c pico_frame.c pico_protocol.c pico_socket.c pico_socket_multicast.c pico_stack.c pico_tree.c )
    $ rm -rf net/picotcp/.git
    $ git add net/picotcp/
    $ git commit -s

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 net/picotcp/.gitignore                      |   24 +
 net/picotcp/COPYING                         |    8 +
 net/picotcp/LICENSE                         |  339 ++++
 net/picotcp/README.md                       |   33 +
 net/picotcp/include/heap.h                  |   83 +
 net/picotcp/include/pico_addressing.h       |   52 +
 net/picotcp/include/pico_config.h           |  229 +++
 net/picotcp/include/pico_constants.h        |   54 +
 net/picotcp/include/pico_device.h           |   54 +
 net/picotcp/include/pico_eth.h              |   21 +
 net/picotcp/include/pico_frame.h            |  122 ++
 net/picotcp/include/pico_module_eth.h       |   33 +
 net/picotcp/include/pico_protocol.h         |   95 ++
 net/picotcp/include/pico_queue.h            |  166 ++
 net/picotcp/include/pico_socket.h           |  268 ++++
 net/picotcp/include/pico_socket_multicast.h |   10 +
 net/picotcp/include/pico_stack.h            |   87 ++
 net/picotcp/include/pico_tree.h             |   93 ++
 net/picotcp/modules/pico_aodv.h             |  131 ++
 net/picotcp/modules/pico_arp.c              |  531 +++++++
 net/picotcp/modules/pico_arp.h              |   32 +
 net/picotcp/modules/pico_dev_loop.c         |   66 +
 net/picotcp/modules/pico_dev_loop.h         |   15 +
 net/picotcp/modules/pico_dev_mock.h         |   47 +
 net/picotcp/modules/pico_dev_null.c         |   60 +
 net/picotcp/modules/pico_dev_null.h         |   15 +
 net/picotcp/modules/pico_dhcp_client.c      |  960 ++++++++++++
 net/picotcp/modules/pico_dhcp_client.h      |   30 +
 net/picotcp/modules/pico_dhcp_common.c      |  189 +++
 net/picotcp/modules/pico_dhcp_common.h      |  186 +++
 net/picotcp/modules/pico_dns_client.h       |   46 +
 net/picotcp/modules/pico_dns_common.h       |  521 +++++++
 net/picotcp/modules/pico_dns_sd.h           |   90 ++
 net/picotcp/modules/pico_fragments.c        |  345 +++++
 net/picotcp/modules/pico_fragments.h        |   11 +
 net/picotcp/modules/pico_icmp4.c            |  395 +++++
 net/picotcp/modules/pico_icmp4.h            |  162 ++
 net/picotcp/modules/pico_icmp6.h            |  259 ++++
 net/picotcp/modules/pico_igmp.h             |   26 +
 net/picotcp/modules/pico_ipfilter.h         |   29 +
 net/picotcp/modules/pico_ipv4.c             | 1574 +++++++++++++++++++
 net/picotcp/modules/pico_ipv4.h             |  124 ++
 net/picotcp/modules/pico_ipv6.h             |  153 ++
 net/picotcp/modules/pico_ipv6_nd.h          |   26 +
 net/picotcp/modules/pico_mm.h               |   98 ++
 net/picotcp/modules/pico_nat.h              |   90 ++
 net/picotcp/modules/pico_olsr.h             |   32 +
 net/picotcp/modules/pico_socket_tcp.h       |   33 +
 net/picotcp/modules/pico_socket_udp.c       |  250 +++
 net/picotcp/modules/pico_socket_udp.h       |   19 +
 net/picotcp/modules/pico_tcp.h              |  102 ++
 net/picotcp/modules/pico_udp.c              |  216 +++
 net/picotcp/modules/pico_udp.h              |   45 +
 net/picotcp/stack/pico_device.c             |  408 +++++
 net/picotcp/stack/pico_frame.c              |  286 ++++
 net/picotcp/stack/pico_protocol.c           |  214 +++
 net/picotcp/stack/pico_socket.c             | 2213 +++++++++++++++++++++++++++
 net/picotcp/stack/pico_socket_multicast.c   |  956 ++++++++++++
 net/picotcp/stack/pico_stack.c              | 1157 ++++++++++++++
 net/picotcp/stack/pico_tree.c               |  575 +++++++
 60 files changed, 14488 insertions(+)

diff --git a/net/picotcp/.gitignore b/net/picotcp/.gitignore
new file mode 100644
index 0000000..88593da
--- /dev/null
+++ b/net/picotcp/.gitignore
@@ -0,0 +1,24 @@
+*.d
+*.o
+*.a
+*.out
+*.swp
+tags
+build
+UNIT_*
+core
+core.*
+.DS_Store
+cscope.files
+cscope.out
+*.so
+*.aux
+*.pdf
+*.toc
+*.gz
+*.log
+*.pyc
+*.elf
+*.gcov
+*.gcda
+*.gcno
diff --git a/net/picotcp/COPYING b/net/picotcp/COPYING
new file mode 100644
index 0000000..8a5fe4b
--- /dev/null
+++ b/net/picotcp/COPYING
@@ -0,0 +1,8 @@
+PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems.
+
+Released under the GNU General Public License, version 2.
+See LICENSE for details.
+
+Different licensing models may exist, at the sole discretion of
+the Copyright holders.
+
diff --git a/net/picotcp/LICENSE b/net/picotcp/LICENSE
new file mode 100644
index 0000000..d159169
--- /dev/null
+++ b/net/picotcp/LICENSE
@@ -0,0 +1,339 @@
+                    GNU GENERAL PUBLIC LICENSE
+                       Version 2, June 1991
+
+ Copyright (C) 1989, 1991 Free Software Foundation, Inc.,
+ 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
+ Everyone is permitted to copy and distribute verbatim copies
+ of this license document, but changing it is not allowed.
+
+                            Preamble
+
+  The licenses for most software are designed to take away your
+freedom to share and change it.  By contrast, the GNU General Public
+License is intended to guarantee your freedom to share and change free
+software--to make sure the software is free for all its users.  This
+General Public License applies to most of the Free Software
+Foundation's software and to any other program whose authors commit to
+using it.  (Some other Free Software Foundation software is covered by
+the GNU Lesser General Public License instead.)  You can apply it to
+your programs, too.
+
+  When we speak of free software, we are referring to freedom, not
+price.  Our General Public Licenses are designed to make sure that you
+have the freedom to distribute copies of free software (and charge for
+this service if you wish), that you receive source code or can get it
+if you want it, that you can change the software or use pieces of it
+in new free programs; and that you know you can do these things.
+
+  To protect your rights, we need to make restrictions that forbid
+anyone to deny you these rights or to ask you to surrender the rights.
+These restrictions translate to certain responsibilities for you if you
+distribute copies of the software, or if you modify it.
+
+  For example, if you distribute copies of such a program, whether
+gratis or for a fee, you must give the recipients all the rights that
+you have.  You must make sure that they, too, receive or can get the
+source code.  And you must show them these terms so they know their
+rights.
+
+  We protect your rights with two steps: (1) copyright the software, and
+(2) offer you this license which gives you legal permission to copy,
+distribute and/or modify the software.
+
+  Also, for each author's protection and ours, we want to make certain
+that everyone understands that there is no warranty for this free
+software.  If the software is modified by someone else and passed on, we
+want its recipients to know that what they have is not the original, so
+that any problems introduced by others will not reflect on the original
+authors' reputations.
+
+  Finally, any free program is threatened constantly by software
+patents.  We wish to avoid the danger that redistributors of a free
+program will individually obtain patent licenses, in effect making the
+program proprietary.  To prevent this, we have made it clear that any
+patent must be licensed for everyone's free use or not licensed at all.
+
+  The precise terms and conditions for copying, distribution and
+modification follow.
+
+                    GNU GENERAL PUBLIC LICENSE
+   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
+
+  0. This License applies to any program or other work which contains
+a notice placed by the copyright holder saying it may be distributed
+under the terms of this General Public License.  The "Program", below,
+refers to any such program or work, and a "work based on the Program"
+means either the Program or any derivative work under copyright law:
+that is to say, a work containing the Program or a portion of it,
+either verbatim or with modifications and/or translated into another
+language.  (Hereinafter, translation is included without limitation in
+the term "modification".)  Each licensee is addressed as "you".
+
+Activities other than copying, distribution and modification are not
+covered by this License; they are outside its scope.  The act of
+running the Program is not restricted, and the output from the Program
+is covered only if its contents constitute a work based on the
+Program (independent of having been made by running the Program).
+Whether that is true depends on what the Program does.
+
+  1. You may copy and distribute verbatim copies of the Program's
+source code as you receive it, in any medium, provided that you
+conspicuously and appropriately publish on each copy an appropriate
+copyright notice and disclaimer of warranty; keep intact all the
+notices that refer to this License and to the absence of any warranty;
+and give any other recipients of the Program a copy of this License
+along with the Program.
+
+You may charge a fee for the physical act of transferring a copy, and
+you may at your option offer warranty protection in exchange for a fee.
+
+  2. You may modify your copy or copies of the Program or any portion
+of it, thus forming a work based on the Program, and copy and
+distribute such modifications or work under the terms of Section 1
+above, provided that you also meet all of these conditions:
+
+    a) You must cause the modified files to carry prominent notices
+    stating that you changed the files and the date of any change.
+
+    b) You must cause any work that you distribute or publish, that in
+    whole or in part contains or is derived from the Program or any
+    part thereof, to be licensed as a whole at no charge to all third
+    parties under the terms of this License.
+
+    c) If the modified program normally reads commands interactively
+    when run, you must cause it, when started running for such
+    interactive use in the most ordinary way, to print or display an
+    announcement including an appropriate copyright notice and a
+    notice that there is no warranty (or else, saying that you provide
+    a warranty) and that users may redistribute the program under
+    these conditions, and telling the user how to view a copy of this
+    License.  (Exception: if the Program itself is interactive but
+    does not normally print such an announcement, your work based on
+    the Program is not required to print an announcement.)
+
+These requirements apply to the modified work as a whole.  If
+identifiable sections of that work are not derived from the Program,
+and can be reasonably considered independent and separate works in
+themselves, then this License, and its terms, do not apply to those
+sections when you distribute them as separate works.  But when you
+distribute the same sections as part of a whole which is a work based
+on the Program, the distribution of the whole must be on the terms of
+this License, whose permissions for other licensees extend to the
+entire whole, and thus to each and every part regardless of who wrote it.
+
+Thus, it is not the intent of this section to claim rights or contest
+your rights to work written entirely by you; rather, the intent is to
+exercise the right to control the distribution of derivative or
+collective works based on the Program.
+
+In addition, mere aggregation of another work not based on the Program
+with the Program (or with a work based on the Program) on a volume of
+a storage or distribution medium does not bring the other work under
+the scope of this License.
+
+  3. You may copy and distribute the Program (or a work based on it,
+under Section 2) in object code or executable form under the terms of
+Sections 1 and 2 above provided that you also do one of the following:
+
+    a) Accompany it with the complete corresponding machine-readable
+    source code, which must be distributed under the terms of Sections
+    1 and 2 above on a medium customarily used for software interchange; or,
+
+    b) Accompany it with a written offer, valid for at least three
+    years, to give any third party, for a charge no more than your
+    cost of physically performing source distribution, a complete
+    machine-readable copy of the corresponding source code, to be
+    distributed under the terms of Sections 1 and 2 above on a medium
+    customarily used for software interchange; or,
+
+    c) Accompany it with the information you received as to the offer
+    to distribute corresponding source code.  (This alternative is
+    allowed only for noncommercial distribution and only if you
+    received the program in object code or executable form with such
+    an offer, in accord with Subsection b above.)
+
+The source code for a work means the preferred form of the work for
+making modifications to it.  For an executable work, complete source
+code means all the source code for all modules it contains, plus any
+associated interface definition files, plus the scripts used to
+control compilation and installation of the executable.  However, as a
+special exception, the source code distributed need not include
+anything that is normally distributed (in either source or binary
+form) with the major components (compiler, kernel, and so on) of the
+operating system on which the executable runs, unless that component
+itself accompanies the executable.
+
+If distribution of executable or object code is made by offering
+access to copy from a designated place, then offering equivalent
+access to copy the source code from the same place counts as
+distribution of the source code, even though third parties are not
+compelled to copy the source along with the object code.
+
+  4. You may not copy, modify, sublicense, or distribute the Program
+except as expressly provided under this License.  Any attempt
+otherwise to copy, modify, sublicense or distribute the Program is
+void, and will automatically terminate your rights under this License.
+However, parties who have received copies, or rights, from you under
+this License will not have their licenses terminated so long as such
+parties remain in full compliance.
+
+  5. You are not required to accept this License, since you have not
+signed it.  However, nothing else grants you permission to modify or
+distribute the Program or its derivative works.  These actions are
+prohibited by law if you do not accept this License.  Therefore, by
+modifying or distributing the Program (or any work based on the
+Program), you indicate your acceptance of this License to do so, and
+all its terms and conditions for copying, distributing or modifying
+the Program or works based on it.
+
+  6. Each time you redistribute the Program (or any work based on the
+Program), the recipient automatically receives a license from the
+original licensor to copy, distribute or modify the Program subject to
+these terms and conditions.  You may not impose any further
+restrictions on the recipients' exercise of the rights granted herein.
+You are not responsible for enforcing compliance by third parties to
+this License.
+
+  7. If, as a consequence of a court judgment or allegation of patent
+infringement or for any other reason (not limited to patent issues),
+conditions are imposed on you (whether by court order, agreement or
+otherwise) that contradict the conditions of this License, they do not
+excuse you from the conditions of this License.  If you cannot
+distribute so as to satisfy simultaneously your obligations under this
+License and any other pertinent obligations, then as a consequence you
+may not distribute the Program at all.  For example, if a patent
+license would not permit royalty-free redistribution of the Program by
+all those who receive copies directly or indirectly through you, then
+the only way you could satisfy both it and this License would be to
+refrain entirely from distribution of the Program.
+
+If any portion of this section is held invalid or unenforceable under
+any particular circumstance, the balance of the section is intended to
+apply and the section as a whole is intended to apply in other
+circumstances.
+
+It is not the purpose of this section to induce you to infringe any
+patents or other property right claims or to contest validity of any
+such claims; this section has the sole purpose of protecting the
+integrity of the free software distribution system, which is
+implemented by public license practices.  Many people have made
+generous contributions to the wide range of software distributed
+through that system in reliance on consistent application of that
+system; it is up to the author/donor to decide if he or she is willing
+to distribute software through any other system and a licensee cannot
+impose that choice.
+
+This section is intended to make thoroughly clear what is believed to
+be a consequence of the rest of this License.
+
+  8. If the distribution and/or use of the Program is restricted in
+certain countries either by patents or by copyrighted interfaces, the
+original copyright holder who places the Program under this License
+may add an explicit geographical distribution limitation excluding
+those countries, so that distribution is permitted only in or among
+countries not thus excluded.  In such case, this License incorporates
+the limitation as if written in the body of this License.
+
+  9. The Free Software Foundation may publish revised and/or new versions
+of the General Public License from time to time.  Such new versions will
+be similar in spirit to the present version, but may differ in detail to
+address new problems or concerns.
+
+Each version is given a distinguishing version number.  If the Program
+specifies a version number of this License which applies to it and "any
+later version", you have the option of following the terms and conditions
+either of that version or of any later version published by the Free
+Software Foundation.  If the Program does not specify a version number of
+this License, you may choose any version ever published by the Free Software
+Foundation.
+
+  10. If you wish to incorporate parts of the Program into other free
+programs whose distribution conditions are different, write to the author
+to ask for permission.  For software which is copyrighted by the Free
+Software Foundation, write to the Free Software Foundation; we sometimes
+make exceptions for this.  Our decision will be guided by the two goals
+of preserving the free status of all derivatives of our free software and
+of promoting the sharing and reuse of software generally.
+
+                            NO WARRANTY
+
+  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
+FOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN
+OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
+PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED
+OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
+MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS
+TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE
+PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,
+REPAIR OR CORRECTION.
+
+  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
+WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
+REDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,
+INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING
+OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED
+TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY
+YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER
+PROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE
+POSSIBILITY OF SUCH DAMAGES.
+
+                     END OF TERMS AND CONDITIONS
+
+            How to Apply These Terms to Your New Programs
+
+  If you develop a new program, and you want it to be of the greatest
+possible use to the public, the best way to achieve this is to make it
+free software which everyone can redistribute and change under these terms.
+
+  To do so, attach the following notices to the program.  It is safest
+to attach them to the start of each source file to most effectively
+convey the exclusion of warranty; and each file should have at least
+the "copyright" line and a pointer to where the full notice is found.
+
+    <one line to give the program's name and a brief idea of what it does.>
+    Copyright (C) <year>  <name of author>
+
+    This program is free software; you can redistribute it and/or modify
+    it under the terms of the GNU General Public License as published by
+    the Free Software Foundation; either version 2 of the License, or
+    (at your option) any later version.
+
+    This program is distributed in the hope that it will be useful,
+    but WITHOUT ANY WARRANTY; without even the implied warranty of
+    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+    GNU General Public License for more details.
+
+    You should have received a copy of the GNU General Public License along
+    with this program; if not, write to the Free Software Foundation, Inc.,
+    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+
+Also add information on how to contact you by electronic and paper mail.
+
+If the program is interactive, make it output a short notice like this
+when it starts in an interactive mode:
+
+    Gnomovision version 69, Copyright (C) year name of author
+    Gnomovision comes with ABSOLUTELY NO WARRANTY; for details type `show w'.
+    This is free software, and you are welcome to redistribute it
+    under certain conditions; type `show c' for details.
+
+The hypothetical commands `show w' and `show c' should show the appropriate
+parts of the General Public License.  Of course, the commands you use may
+be called something other than `show w' and `show c'; they could even be
+mouse-clicks or menu items--whatever suits your program.
+
+You should also get your employer (if you work as a programmer) or your
+school, if any, to sign a "copyright disclaimer" for the program, if
+necessary.  Here is a sample; alter the names:
+
+  Yoyodyne, Inc., hereby disclaims all copyright interest in the program
+  `Gnomovision' (which makes passes at compilers) written by James Hacker.
+
+  <signature of Ty Coon>, 1 April 1989
+  Ty Coon, President of Vice
+
+This General Public License does not permit incorporating your program into
+proprietary programs.  If your program is a subroutine library, you may
+consider it more useful to permit linking proprietary applications with the
+library.  If this is what you want to do, use the GNU Lesser General
+Public License instead of this License.
diff --git a/net/picotcp/README.md b/net/picotcp/README.md
new file mode 100644
index 0000000..9e32eb7
--- /dev/null
+++ b/net/picotcp/README.md
@@ -0,0 +1,33 @@
+picoTCP
+
+---------------
+
+Welcome to the one and only <font color=ff00f0>picoTCP repository</font>. 
+
+picoTCP is a small-footprint, modular TCP/IP stack designed for embedded systems and the Internet of Things. It's actively being developed by *[Altran Intelligent Systems](http://intelligent-systems.altran.com/)*.
+
+This code is released under the terms of GNU GPL v2 only. Some rights reserved.
+Other licenses may apply at the sole discretion of the copyright holders.
+
+Learn how to use picoTCP in your project by going through the Getting Started guide on our [GitHub wiki](https://github.com/tass-belgium/picotcp/wiki).
+
+For more information visit the [picoTCP website](http://www.picotcp.com), send us an email or contact us on [Twitter](https://twitter.com/picotcp), [Facebook](https://www.facebook.com/picoTCP) or [Reddit](http://www.reddit.com/r/picotcp/).
+
+Wondering about picoTCP's code quality? Check [our TiCS score](http://tics.picotcp.com:42506/TIOBEPortal/TICS/treeviewer?)
+
+
+---------------
+
+Continuous integration
+
+Jenkins Functional tests: 
+[![Jenkins autotest](http://jenkins.picotcp.com:8080/buildStatus/icon?job=PicoTCP_rel_autotest)](http://jenkins.picotcp.com:8080/job/PicoTCP_rel_autotest)
+
+Jenkins Unit tests      : 
+[![Jenkins unit tests](http://jenkins.picotcp.com:8080/buildStatus/icon?job=PicoTCP_rel_unit_tests)](http://jenkins.picotcp.com:8080/job/PicoTCP_rel_unit_tests)
+
+Jenkins RFC compliance  :
+[![Jenkins RFC Compliance](http://jenkins.picotcp.com:8080/buildStatus/icon?job=PicoTCP_rel_RF_mbed)](http://jenkins.picotcp.com:8080/job/PicoTCP_rel_RF_mbed)
+
+Jenkins TICS quality    :
+[![Jenkins TICS](http://jenkins.picotcp.com:8080/buildStatus/icon?job=PicoTCP_rel_TICS)](http://jenkins.picotcp.com:8080/job/PicoTCP_rel_TICS/)
diff --git a/net/picotcp/include/heap.h b/net/picotcp/include/heap.h
new file mode 100644
index 0000000..88f495d
--- /dev/null
+++ b/net/picotcp/include/heap.h
@@ -0,0 +1,83 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+ *********************************************************************/
+
+#define DECLARE_HEAP(type, orderby) \
+    struct heap_ ## type {   \
+        uint32_t size;    \
+        uint32_t n;       \
+        type *top;        \
+    }; \
+    typedef struct heap_ ## type heap_ ## type; \
+    static inline int heap_insert(struct heap_ ## type *heap, type * el) \
+    { \
+        uint32_t i; \
+        type *newTop; \
+        if (++heap->n >= heap->size) {                                                \
+            newTop = PICO_ZALLOC((heap->n + 1) * sizeof(type)); \
+            if(!newTop) { \
+                heap->n--; \
+                return -1; \
+            } \
+            if (heap->top)  { \
+                memcpy(newTop, heap->top, heap->n * sizeof(type)); \
+                PICO_FREE(heap->top); \
+            } \
+            heap->top = newTop;             \
+            heap->size++;                                                               \
+        }                                                                             \
+        if (heap->n == 1) {                                                       \
+            memcpy(&heap->top[1], el, sizeof(type));                                    \
+            return 0;                                                                   \
+        }                                                                             \
+        for (i = heap->n; ((i > 1) && (heap->top[i / 2].orderby > el->orderby)); i /= 2) {        \
+            memcpy(&heap->top[i], &heap->top[i / 2], sizeof(type));                     \
+        }             \
+        memcpy(&heap->top[i], el, sizeof(type));                                      \
+        return 0;                                                                     \
+    } \
+    static inline int heap_peek(struct heap_ ## type *heap, type * first) \
+    { \
+        type *last;           \
+        uint32_t i, child;        \
+        if(heap->n == 0) {    \
+            return -1;          \
+        }                     \
+        memcpy(first, &heap->top[1], sizeof(type));   \
+        last = &heap->top[heap->n--];                 \
+        for(i = 1; (i * 2u) <= heap->n; i = child) {   \
+            child = 2u * i;                              \
+            if ((child != heap->n) &&                   \
+                (heap->top[child + 1]).orderby          \
+                < (heap->top[child]).orderby)           \
+                child++;                                \
+            if (last->orderby >                         \
+                heap->top[child].orderby)               \
+                memcpy(&heap->top[i], &heap->top[child], \
+                       sizeof(type));                  \
+            else                                        \
+                break;                                  \
+        }                                             \
+        memcpy(&heap->top[i], last, sizeof(type));    \
+        return 0;                                     \
+    } \
+    static inline type *heap_first(heap_ ## type * heap)  \
+    { \
+        if (heap->n == 0)     \
+            return NULL;        \
+        return &heap->top[1];  \
+    } \
+    static inline heap_ ## type *heap_init(void) \
+    { \
+        heap_ ## type * p = (heap_ ## type *)PICO_ZALLOC(sizeof(heap_ ## type));  \
+        return p;     \
+    } \
+    /*static inline void heap_destroy(heap_ ## type * h) \
+       { \
+        PICO_FREE(h->top); \
+        PICO_FREE(h); \
+       } \*/
+
+
diff --git a/net/picotcp/include/pico_addressing.h b/net/picotcp/include/pico_addressing.h
new file mode 100644
index 0000000..de62281
--- /dev/null
+++ b/net/picotcp/include/pico_addressing.h
@@ -0,0 +1,52 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+ *********************************************************************/
+#ifndef INCLUDE_PICO_ADDRESSING
+#define INCLUDE_PICO_ADDRESSING
+
+#include "pico_config.h"
+
+PACKED_STRUCT_DEF pico_ip4
+{
+    uint32_t addr;
+};
+
+PACKED_STRUCT_DEF pico_ip6
+{
+    uint8_t addr[16];
+};
+
+union pico_address
+{
+    struct pico_ip4 ip4;
+    struct pico_ip6 ip6;
+};
+
+PACKED_STRUCT_DEF pico_eth
+{
+    uint8_t addr[6];
+    uint8_t padding[2];
+};
+
+extern const uint8_t PICO_ETHADDR_ALL[];
+
+
+PACKED_STRUCT_DEF pico_trans
+{
+    uint16_t sport;
+    uint16_t dport;
+
+};
+
+/* Here are some protocols. */
+#define PICO_PROTO_IPV4   0
+#define PICO_PROTO_ICMP4  1
+#define PICO_PROTO_IGMP  2
+#define PICO_PROTO_TCP    6
+#define PICO_PROTO_UDP    17
+#define PICO_PROTO_IPV6   41
+#define PICO_PROTO_ICMP6  58
+
+#endif
diff --git a/net/picotcp/include/pico_config.h b/net/picotcp/include/pico_config.h
new file mode 100644
index 0000000..6b9c040
--- /dev/null
+++ b/net/picotcp/include/pico_config.h
@@ -0,0 +1,229 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+ *********************************************************************/
+#include "pico_defines.h"
+#ifndef INCLUDE_PICO_CONFIG
+#define INCLUDE_PICO_CONFIG
+#ifndef __KERNEL__
+#include <stdint.h>
+#include <stdlib.h>
+#include <string.h>
+#else
+#include <linux/types.h>
+#endif
+
+#if defined __IAR_SYSTEMS_ICC__ || defined ATOP
+#   define PACKED_STRUCT_DEF __packed struct
+#   define PEDANTIC_STRUCT_DEF __packed struct
+#   define PACKED_UNION_DEF  __packed union
+#   define WEAK
+#else
+#   define PACKED_STRUCT_DEF struct __attribute__((packed))
+#   define PEDANTIC_STRUCT_DEF struct
+#   define PACKED_UNION_DEF  union   /* Sane compilers do not require packed unions */
+#   define WEAK __attribute__((weak))
+#   ifdef __GNUC__
+#       define GCC_VERSION (__GNUC__ * 10000 + __GNUC_MINOR__ * 100 + __GNUC_PATCHLEVEL__)
+#       if ((GCC_VERSION >= 40800))
+#           define BYTESWAP_GCC
+#       endif
+#   endif
+#endif
+
+#ifdef PICO_BIGENDIAN
+
+# define PICO_IDETH_IPV4 0x0800
+# define PICO_IDETH_ARP 0x0806
+# define PICO_IDETH_IPV6 0x86DD
+
+# define PICO_ARP_REQUEST 0x0001
+# define PICO_ARP_REPLY   0x0002
+# define PICO_ARP_HTYPE_ETH 0x0001
+
+#define short_be(x) (x)
+#define long_be(x) (x)
+#define long_long_be(x) (x)
+
+static inline uint16_t short_from(void *_p)
+{
+    unsigned char *p = (unsigned char *)_p;
+    uint16_t r, p0, p1;
+    p0 = p[0];
+    p1 = p[1];
+    r = (p0 << 8) + p1;
+    return r;
+}
+
+static inline uint32_t long_from(void *_p)
+{
+    unsigned char *p = (unsigned char *)_p;
+    uint32_t r, p0, p1, p2, p3;
+    p0 = p[0];
+    p1 = p[1];
+    p2 = p[2];
+    p3 = p[3];
+    r = (p0 << 24) + (p1 << 16) + (p2 << 8) + p3;
+    return r;
+}
+
+#else
+
+static inline uint16_t short_from(void *_p)
+{
+    unsigned char *p = (unsigned char *)_p;
+    uint16_t r, _p0, _p1;
+    _p0 = p[0];
+    _p1 = p[1];
+    r = (uint16_t)((_p1 << 8u) + _p0);
+    return r;
+}
+
+static inline uint32_t long_from(void *_p)
+{
+    unsigned char *p = (unsigned char *)_p;
+    uint32_t r, _p0, _p1, _p2, _p3;
+    _p0 = p[0];
+    _p1 = p[1];
+    _p2 = p[2];
+    _p3 = p[3];
+    r = (_p3 << 24) + (_p2 << 16) + (_p1 << 8) + _p0;
+    return r;
+}
+
+
+# define PICO_IDETH_IPV4 0x0008
+# define PICO_IDETH_ARP 0x0608
+# define PICO_IDETH_IPV6 0xDD86
+
+# define PICO_ARP_REQUEST 0x0100
+# define PICO_ARP_REPLY   0x0200
+# define PICO_ARP_HTYPE_ETH 0x0100
+
+#   ifndef BYTESWAP_GCC
+static inline uint16_t short_be(uint16_t le)
+{
+    return (uint16_t)(((le & 0xFFu) << 8) | ((le >> 8u) & 0xFFu));
+}
+
+static inline uint32_t long_be(uint32_t le)
+{
+    uint8_t *b = (uint8_t *)&le;
+    uint32_t be = 0;
+    uint32_t b0, b1, b2;
+    b0 = b[0];
+    b1 = b[1];
+    b2 = b[2];
+    be = b[3] + (b2 << 8) + (b1 << 16) + (b0 << 24);
+    return be;
+}
+static inline uint64_t long_long_be(uint64_t le)
+{
+    uint8_t *b = (uint8_t *)&le;
+    uint64_t be = 0;
+    uint64_t b0, b1, b2, b3, b4, b5, b6;
+    b0 = b[0];
+    b1 = b[1];
+    b2 = b[2];
+    b3 = b[3];
+    b4 = b[4];
+    b5 = b[5];
+    b6 = b[6];
+    be = b[7] + (b6 << 8) + (b5 << 16) + (b4 << 24) + (b3 << 32) + (b2 << 40) + (b1 << 48) + (b0 << 56);
+    return be;
+}
+#   else
+/*
+   extern uint32_t __builtin_bswap32(uint32_t);
+   extern uint16_t __builtin_bswap16(uint16_t);
+   extern uint64_t __builtin_bswap64(uint64_t);
+ */
+
+static inline uint32_t long_be(uint32_t le)
+{
+    return (uint32_t)__builtin_bswap32(le);
+}
+
+static inline uint16_t short_be(uint16_t le)
+{
+    return (uint16_t)__builtin_bswap16(le);
+}
+
+static inline uint64_t long_long_be(uint64_t le)
+{
+    return (uint64_t)__builtin_bswap64(le);
+}
+
+#   endif /* BYTESWAP_GCC */
+#endif
+
+
+/* Mockables */
+#if defined UNIT_TEST
+#   define MOCKABLE __attribute__((weak))
+#else
+#   define MOCKABLE
+#endif
+
+#include "pico_constants.h"
+#include "pico_mm.h"
+
+#define IGNORE_PARAMETER(x)  ((void)x)
+
+#define PICO_MEM_DEFAULT_SLAB_SIZE 1600
+#define PICO_MEM_PAGE_SIZE 4096
+#define PICO_MEM_PAGE_LIFETIME 100
+#define PICO_MIN_HEAP_SIZE 600
+#define PICO_MIN_SLAB_SIZE 1200
+#define PICO_MAX_SLAB_SIZE 1600
+#define PICO_MEM_MINIMUM_OBJECT_SIZE 4
+
+
+/*** *** *** *** *** *** ***
+ *** PLATFORM SPECIFIC   ***
+ *** *** *** *** *** *** ***/
+#if defined PICO_PORT_CUSTOM
+# include "pico_port.h"
+#elif defined CORTEX_M4_HARDFLOAT
+# include "arch/pico_cortex_m.h"
+#elif defined CORTEX_M4_SOFTFLOAT
+# include "arch/pico_cortex_m.h"
+#elif defined CORTEX_M3
+# include "arch/pico_cortex_m.h"
+#elif defined PIC24
+# include "arch/pico_pic24.h"
+#elif defined MSP430
+# include "arch/pico_msp430.h"
+#elif defined MBED_TEST
+# include "arch/pico_mbed.h"
+#elif defined AVR
+# include "arch/pico_avr.h"
+#elif defined ARM9
+# include "arch/pico_arm9.h"
+#elif defined ESP8266
+# include "arch/pico_esp8266.h"
+#elif defined MT7681
+# include "arch/pico_generic_gcc.h"
+#elif defined FAULTY
+# include "../test/pico_faulty.h"
+#elif defined ARCHNONE
+# include "arch/pico_none.h"
+#elif defined GENERIC
+# include "arch/pico_generic_gcc.h"
+#elif defined __KERNEL__
+# include "arch/pico_linux.h"
+/* #elif defined ... */
+#else
+# include "arch/pico_posix.h"
+#endif
+
+#ifdef PICO_SUPPORT_MM
+#define PICO_ZALLOC(x) pico_mem_zalloc(x)
+#define PICO_FREE(x) pico_mem_free(x)
+#else
+#define PICO_ZALLOC(x) pico_zalloc(x)
+#define PICO_FREE(x) pico_free(x)
+#endif  /* PICO_SUPPORT_MM */
+
+#endif
diff --git a/net/picotcp/include/pico_constants.h b/net/picotcp/include/pico_constants.h
new file mode 100644
index 0000000..f043408
--- /dev/null
+++ b/net/picotcp/include/pico_constants.h
@@ -0,0 +1,54 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+ *********************************************************************/
+#ifndef INCLUDE_PICO_CONST
+#define INCLUDE_PICO_CONST
+/* Included from pico_config.h */
+
+/** Non-endian dependant constants */
+#define PICO_SIZE_IP4    4
+#define PICO_SIZE_IP6   16
+#define PICO_SIZE_ETH    6
+#define PICO_SIZE_TRANS  8
+
+/** Endian-dependant constants **/
+typedef uint64_t pico_time;
+extern volatile uint64_t pico_tick;
+
+
+/*** *** *** *** *** *** ***
+ ***     ARP CONFIG      ***
+ *** *** *** *** *** *** ***/
+
+#include "pico_addressing.h"
+
+/* Maximum amount of accepted ARP requests per burst interval */
+#define PICO_ARP_MAX_RATE 1
+/* Duration of the burst interval in milliseconds */
+#define PICO_ARP_INTERVAL 1000
+
+/* Add well-known host numbers here. (bigendian constants only beyond this point) */
+#define PICO_IP4_ANY (0x00000000U)
+#define PICO_IP4_BCAST (0xffffffffU)
+
+/* defined in modules/pico_ipv6.c */
+#ifdef PICO_SUPPORT_IPV6
+extern const uint8_t PICO_IPV6_ANY[PICO_SIZE_IP6];
+#endif
+
+static inline uint32_t pico_hash(const void *buf, uint32_t size)
+{
+    uint32_t hash = 5381;
+    uint32_t i;
+    const uint8_t *ptr = (const uint8_t *)buf;
+    for(i = 0; i < size; i++)
+        hash = ((hash << 5) + hash) + ptr[i]; /* hash * 33 + char */
+    return hash;
+}
+
+/* Debug */
+/* #define PICO_SUPPORT_DEBUG_MEMORY */
+/* #define PICO_SUPPORT_DEBUG_TOOLS */
+#endif
diff --git a/net/picotcp/include/pico_device.h b/net/picotcp/include/pico_device.h
new file mode 100644
index 0000000..a2d03ec
--- /dev/null
+++ b/net/picotcp/include/pico_device.h
@@ -0,0 +1,54 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+ *********************************************************************/
+#ifndef INCLUDE_PICO_DEVICE
+#define INCLUDE_PICO_DEVICE
+#include "pico_queue.h"
+#include "pico_frame.h"
+#include "pico_addressing.h"
+#include "pico_tree.h"
+extern struct pico_tree Device_tree;
+#include "pico_ipv6_nd.h"
+#define MAX_DEVICE_NAME 16
+
+
+struct pico_ethdev {
+    struct pico_eth mac;
+};
+
+struct pico_device {
+    char name[MAX_DEVICE_NAME];
+    uint32_t hash;
+    uint32_t overhead;
+    uint32_t mtu;
+    struct pico_ethdev *eth; /* Null if non-ethernet */
+    struct pico_queue *q_in;
+    struct pico_queue *q_out;
+    int (*link_state)(struct pico_device *self);
+    int (*send)(struct pico_device *self, void *buf, int len); /* Send function. Return 0 if busy */
+    int (*poll)(struct pico_device *self, int loop_score);
+    void (*destroy)(struct pico_device *self);
+    int (*dsr)(struct pico_device *self, int loop_score);
+    int __serving_interrupt;
+    /* used to signal the upper layer the number of events arrived since the last processing */
+    volatile int eventCnt;
+  #ifdef PICO_SUPPORT_IPV6
+    struct pico_nd_hostvars hostvars;
+  #endif
+};
+
+
+int pico_device_init(struct pico_device *dev, const char *name, uint8_t *mac);
+void pico_device_destroy(struct pico_device *dev);
+int pico_devices_loop(int loop_score, int direction);
+struct pico_device*pico_get_device(const char*name);
+int32_t pico_device_broadcast(struct pico_frame *f);
+int pico_device_link_state(struct pico_device *dev);
+int pico_device_ipv6_random_ll(struct pico_device *dev);
+#ifdef PICO_SUPPORT_IPV6
+struct pico_ipv6_link *pico_ipv6_link_add_local(struct pico_device *dev, const struct pico_ip6 *prefix);
+#endif
+
+#endif
diff --git a/net/picotcp/include/pico_eth.h b/net/picotcp/include/pico_eth.h
new file mode 100644
index 0000000..89846c7
--- /dev/null
+++ b/net/picotcp/include/pico_eth.h
@@ -0,0 +1,21 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+ *********************************************************************/
+#ifndef INCLUDE_PICO_ETH
+#define INCLUDE_PICO_ETH
+#include "pico_addressing.h"
+#include "pico_ipv4.h"
+#include "pico_ipv6.h"
+
+
+PACKED_STRUCT_DEF pico_eth_hdr {
+    uint8_t daddr[6];
+    uint8_t saddr[6];
+    uint16_t proto;
+};
+
+#define PICO_SIZE_ETHHDR 14
+
+#endif
diff --git a/net/picotcp/include/pico_frame.h b/net/picotcp/include/pico_frame.h
new file mode 100644
index 0000000..feb8f78
--- /dev/null
+++ b/net/picotcp/include/pico_frame.h
@@ -0,0 +1,122 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+ *********************************************************************/
+#ifndef INCLUDE_PICO_FRAME
+#define INCLUDE_PICO_FRAME
+#include "pico_config.h"
+
+
+#define PICO_FRAME_FLAG_BCAST               (0x01)
+#define PICO_FRAME_FLAG_EXT_BUFFER          (0x02)
+#define PICO_FRAME_FLAG_EXT_USAGE_COUNTER   (0x04)
+#define PICO_FRAME_FLAG_SACKED              (0x80)
+#define IS_BCAST(f) ((f->flags & PICO_FRAME_FLAG_BCAST) == PICO_FRAME_FLAG_BCAST)
+
+
+struct pico_socket;
+
+
+struct pico_frame {
+
+    /* Connector for queues */
+    struct pico_frame *next;
+
+    /* Start of the whole buffer, total frame length. */
+    unsigned char *buffer;
+    uint32_t buffer_len;
+
+    /* For outgoing packets: this is the meaningful buffer. */
+    unsigned char *start;
+    uint32_t len;
+
+    /* Pointer to usage counter */
+    uint32_t *usage_count;
+
+    /* Pointer to protocol headers */
+    uint8_t *datalink_hdr;
+
+    uint8_t *net_hdr;
+    uint16_t net_len;
+    uint8_t *transport_hdr;
+    uint16_t transport_len;
+    uint8_t *app_hdr;
+    uint16_t app_len;
+
+    /* Pointer to the phisical device this packet belongs to.
+     * Should be valid in both routing directions
+     */
+    struct pico_device *dev;
+
+    pico_time timestamp;
+
+    /* Failures due to bad datalink addressing. */
+    uint16_t failure_count;
+
+    /* Protocol over IP */
+    uint8_t proto;
+
+    /* PICO_FRAME_FLAG_* */
+    uint8_t flags;
+
+    /* Pointer to payload */
+    unsigned char *payload;
+    uint16_t payload_len;
+
+#ifdef PICO_SUPPORT_IPFRAG
+    /* Payload fragmentation info */
+    uint16_t frag;
+#endif
+
+    /* Pointer to socket */
+    struct pico_socket *sock;
+
+    /* Pointer to transport info, used to store remote UDP endpoint (IP + port) */
+    void *info;
+
+    /*Priority. "best-effort" priority, the default value is 0. Priority can be in between -10 and +10*/
+    int8_t priority;
+    uint8_t transport_flags_saved;
+
+    /* Callback to notify listener when the buffer has been discarded */
+    void (*notify_free)(uint8_t *);
+
+    uint8_t send_ttl; /* Special TTL/HOPS value, 0 = auto assign */
+    uint8_t send_tos; /* Type of service */
+};
+
+/** frame alloc/dealloc/copy **/
+void pico_frame_discard(struct pico_frame *f);
+struct pico_frame *pico_frame_copy(struct pico_frame *f);
+struct pico_frame *pico_frame_deepcopy(struct pico_frame *f);
+struct pico_frame *pico_frame_alloc(uint32_t size);
+int pico_frame_grow(struct pico_frame *f, uint32_t size);
+struct pico_frame *pico_frame_alloc_skeleton(uint32_t size, int ext_buffer);
+int pico_frame_skeleton_set_buffer(struct pico_frame *f, void *buf);
+uint16_t pico_checksum(void *inbuf, uint32_t len);
+uint16_t pico_dualbuffer_checksum(void *b1, uint32_t len1, void *b2, uint32_t len2);
+
+static inline int pico_is_digit(char c)
+{
+    if (c < '0' || c > '9')
+        return 0;
+
+    return 1;
+}
+
+static inline int pico_is_hex(char c)
+{
+    if (c >= '0' && c <= '9')
+        return 1;
+
+    if (c >= 'a' && c <= 'f')
+        return 1;
+
+    if (c >= 'A' && c <= 'F')
+        return 1;
+
+    return 0;
+}
+
+#endif
diff --git a/net/picotcp/include/pico_module_eth.h b/net/picotcp/include/pico_module_eth.h
new file mode 100644
index 0000000..c86680d
--- /dev/null
+++ b/net/picotcp/include/pico_module_eth.h
@@ -0,0 +1,33 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+ *********************************************************************/
+#ifndef PICO_MODULE_IPV4_H
+#define PICO_MODULE_IPV4_H
+
+struct pico_arp_entry {
+    struct eth dest;
+#ifdef PICO_CONFIG_IPV4
+    struct ipv4 addr_ipv4;
+#endif
+    RB_ENTRY(pico_arp_entry) node;
+};
+
+/* Configured device */
+struct pico_eth_link {
+    struct pico_device *dev;
+    struct eth address;
+    struct eth netmask;
+    RB_ENTRY(pico_eth_link) node;
+};
+
+#ifndef IS_MODULE_ETH
+# define _mod extern
+#else
+# define _mod
+#endif
+_mod struct pico_module pico_module_eth;
+#undef _mod
+
+#endif
diff --git a/net/picotcp/include/pico_protocol.h b/net/picotcp/include/pico_protocol.h
new file mode 100644
index 0000000..fd7c122
--- /dev/null
+++ b/net/picotcp/include/pico_protocol.h
@@ -0,0 +1,95 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+ *********************************************************************/
+#ifndef INCLUDE_PICO_PROTOCOL
+#define INCLUDE_PICO_PROTOCOL
+#include "pico_config.h"
+#include "pico_queue.h"
+
+#define PICO_LOOP_DIR_IN   1
+#define PICO_LOOP_DIR_OUT  2
+
+enum pico_layer {
+    PICO_LAYER_DATALINK = 2, /* Ethernet only. */
+    PICO_LAYER_NETWORK = 3, /* IPv4, IPv6, ARP. Arp is there because it communicates with L2 */
+    PICO_LAYER_TRANSPORT = 4, /* UDP, TCP, ICMP */
+    PICO_LAYER_SOCKET = 5   /* Socket management */
+};
+
+enum pico_err_e {
+    PICO_ERR_NOERR = 0,
+    PICO_ERR_EPERM = 1,
+    PICO_ERR_ENOENT = 2,
+    /* ... */
+    PICO_ERR_EINTR = 4,
+    PICO_ERR_EIO = 5,
+    PICO_ERR_ENXIO = 6,
+    /* ... */
+    PICO_ERR_EAGAIN = 11,
+    PICO_ERR_ENOMEM = 12,
+    PICO_ERR_EACCESS = 13,
+    PICO_ERR_EFAULT = 14,
+    /* ... */
+    PICO_ERR_EBUSY = 16,
+    PICO_ERR_EEXIST = 17,
+    /* ... */
+    PICO_ERR_EINVAL = 22,
+    /* ... */
+    PICO_ERR_ENONET = 64,
+    /* ... */
+    PICO_ERR_EPROTO = 71,
+    /* ... */
+    PICO_ERR_ENOPROTOOPT = 92,
+    PICO_ERR_EPROTONOSUPPORT = 93,
+    /* ... */
+    PICO_ERR_EOPNOTSUPP = 95,
+    PICO_ERR_EADDRINUSE = 98,
+    PICO_ERR_EADDRNOTAVAIL = 99,
+    PICO_ERR_ENETDOWN = 100,
+    PICO_ERR_ENETUNREACH = 101,
+    /* ... */
+    PICO_ERR_ECONNRESET = 104,
+    /* ... */
+    PICO_ERR_EISCONN = 106,
+    PICO_ERR_ENOTCONN = 107,
+    PICO_ERR_ESHUTDOWN = 108,
+    /* ... */
+    PICO_ERR_ETIMEDOUT = 110,
+    PICO_ERR_ECONNREFUSED = 111,
+    PICO_ERR_EHOSTDOWN = 112,
+    PICO_ERR_EHOSTUNREACH = 113,
+};
+
+typedef enum pico_err_e pico_err_t;
+extern volatile pico_err_t pico_err;
+
+#define IS_IPV6(f) (f && f->net_hdr && ((((uint8_t *)(f->net_hdr))[0] & 0xf0) == 0x60))
+#define IS_IPV4(f) (f && f->net_hdr && ((((uint8_t *)(f->net_hdr))[0] & 0xf0) == 0x40))
+
+#define MAX_PROTOCOL_NAME 16
+
+struct pico_protocol {
+    char name[MAX_PROTOCOL_NAME];
+    uint32_t hash;
+    enum pico_layer layer;
+    uint16_t proto_number;
+    struct pico_queue *q_in;
+    struct pico_queue *q_out;
+    struct pico_frame *(*alloc)(struct pico_protocol *self, uint16_t size); /* Frame allocation. */
+    int (*push)(struct pico_protocol *self, struct pico_frame *p);    /* Push function, for active outgoing pkts from above */
+    int (*process_out)(struct pico_protocol *self, struct pico_frame *p);  /* Send loop. */
+    int (*process_in)(struct pico_protocol *self, struct pico_frame *p);  /* Recv loop. */
+    uint16_t (*get_mtu)(struct pico_protocol *self);
+};
+
+int pico_protocols_loop(int loop_score);
+void pico_protocol_init(struct pico_protocol *p);
+
+int pico_protocol_datalink_loop(int loop_score, int direction);
+int pico_protocol_network_loop(int loop_score, int direction);
+int pico_protocol_transport_loop(int loop_score, int direction);
+int pico_protocol_socket_loop(int loop_score, int direction);
+
+#endif
diff --git a/net/picotcp/include/pico_queue.h b/net/picotcp/include/pico_queue.h
new file mode 100644
index 0000000..6cbb979
--- /dev/null
+++ b/net/picotcp/include/pico_queue.h
@@ -0,0 +1,166 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+ *********************************************************************/
+#ifndef INCLUDE_PICO_QUEUE
+#define INCLUDE_PICO_QUEUE
+#include "pico_config.h"
+#include "pico_frame.h"
+
+#define Q_LIMIT 0
+
+#ifndef NULL
+#define NULL ((void *)0)
+#endif
+
+void *pico_mutex_init(void);
+void pico_mutex_deinit(void *mutex);
+void pico_mutex_lock(void *mutex);
+int pico_mutex_lock_timeout(void *mutex, int timeout);
+void pico_mutex_unlock(void *mutex);
+void pico_mutex_unlock_ISR(void *mutex);
+
+struct pico_queue {
+    uint32_t frames;
+    uint32_t size;
+    uint32_t max_frames;
+    uint32_t max_size;
+    struct pico_frame *head;
+    struct pico_frame *tail;
+#ifdef PICO_SUPPORT_MUTEX
+    void *mutex;
+#endif
+    uint8_t shared;
+    uint16_t overhead;
+};
+
+#ifdef PICO_SUPPORT_MUTEX
+#define PICOTCP_MUTEX_LOCK(x) { \
+        if (x == NULL) \
+            x = pico_mutex_init(); \
+        pico_mutex_lock(x); \
+}
+#define PICOTCP_MUTEX_UNLOCK(x) pico_mutex_unlock(x)
+#define PICOTCP_MUTEX_DEL(x) pico_mutex_deinit(x)
+
+#else
+#define PICOTCP_MUTEX_LOCK(x) do {} while(0)
+#define PICOTCP_MUTEX_UNLOCK(x) do {} while(0)
+#define PICOTCP_MUTEX_DEL(x) do {} while(0)
+#endif
+
+#ifdef PICO_SUPPORT_DEBUG_TOOLS
+static void debug_q(struct pico_queue *q)
+{
+    struct pico_frame *p = q->head;
+    dbg("%d: ", q->frames);
+    while(p) {
+        dbg("(%p)-->", p);
+        p = p->next;
+    }
+    dbg("X\n");
+}
+
+#else
+
+#define debug_q(x) do {} while(0)
+#endif
+
+static inline int32_t pico_enqueue(struct pico_queue *q, struct pico_frame *p)
+{
+    if ((q->max_frames) && (q->max_frames <= q->frames))
+        return -1;
+
+#if (Q_LIMIT != 0)
+    if ((Q_LIMIT < p->buffer_len + q->size))
+        return -1;
+
+#endif
+
+    if ((q->max_size) && (q->max_size < (p->buffer_len + q->size)))
+        return -1;
+
+    if (q->shared)
+        PICOTCP_MUTEX_LOCK(q->mutex);
+
+    p->next = NULL;
+    if (!q->head) {
+        q->head = p;
+        q->tail = p;
+        q->size = 0;
+        q->frames = 0;
+    } else {
+        q->tail->next = p;
+        q->tail = p;
+    }
+
+    q->size += p->buffer_len + q->overhead;
+    q->frames++;
+    debug_q(q);
+
+    if (q->shared)
+        PICOTCP_MUTEX_UNLOCK(q->mutex);
+
+    return (int32_t)q->size;
+}
+
+static inline struct pico_frame *pico_dequeue(struct pico_queue *q)
+{
+    struct pico_frame *p = q->head;
+    if (!p)
+        return NULL;
+
+    if (q->frames < 1)
+        return NULL;
+
+    if (q->shared)
+        PICOTCP_MUTEX_LOCK(q->mutex);
+
+    q->head = p->next;
+    q->frames--;
+    q->size -= p->buffer_len - q->overhead;
+    if (q->head == NULL)
+        q->tail = NULL;
+
+    debug_q(q);
+
+    p->next = NULL;
+    if (q->shared)
+        PICOTCP_MUTEX_UNLOCK(q->mutex);
+
+    return p;
+}
+
+static inline struct pico_frame *pico_queue_peek(struct pico_queue *q)
+{
+    struct pico_frame *p = q->head;
+    if (q->frames < 1)
+        return NULL;
+
+    debug_q(q);
+    return p;
+}
+
+static inline void pico_queue_deinit(struct pico_queue *q)
+{
+    if (q->shared) {
+        PICOTCP_MUTEX_DEL(q->mutex);
+    }
+}
+
+static inline void pico_queue_empty(struct pico_queue *q)
+{
+    struct pico_frame *p = pico_dequeue(q);
+    while(p) {
+        pico_frame_discard(p);
+        p = pico_dequeue(q);
+    }
+}
+
+static inline void pico_queue_protect(struct pico_queue *q)
+{
+    q->shared = 1;
+}
+
+#endif
diff --git a/net/picotcp/include/pico_socket.h b/net/picotcp/include/pico_socket.h
new file mode 100644
index 0000000..a076654
--- /dev/null
+++ b/net/picotcp/include/pico_socket.h
@@ -0,0 +1,268 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+ *********************************************************************/
+#ifndef INCLUDE_PICO_SOCKET
+#define INCLUDE_PICO_SOCKET
+#include "pico_queue.h"
+#include "pico_addressing.h"
+#include "pico_config.h"
+#include "pico_protocol.h"
+#include "pico_tree.h"
+
+#ifdef __linux__
+    #define PICO_DEFAULT_SOCKETQ (16 * 1024) /* Linux host, so we want full throttle */
+#else
+    #define PICO_DEFAULT_SOCKETQ (6 * 1024) /* seems like an acceptable default for small embedded systems */
+#endif
+
+#define PICO_SHUT_RD   1
+#define PICO_SHUT_WR   2
+#define PICO_SHUT_RDWR 3
+
+#ifdef PICO_SUPPORT_IPV4
+# define IS_SOCK_IPV4(s) ((s->net == &pico_proto_ipv4))
+#else
+# define IS_SOCK_IPV4(s) (0)
+#endif
+
+#ifdef PICO_SUPPORT_IPV6
+# define IS_SOCK_IPV6(s) ((s->net == &pico_proto_ipv6))
+#else
+# define IS_SOCK_IPV6(s) (0)
+#endif
+
+
+struct pico_sockport
+{
+    struct pico_tree socks; /* how you make the connection ? */
+    uint16_t number;
+    uint16_t proto;
+};
+
+
+struct pico_socket {
+    struct pico_protocol *proto;
+    struct pico_protocol *net;
+
+    union pico_address local_addr;
+    union pico_address remote_addr;
+
+    uint16_t local_port;
+    uint16_t remote_port;
+
+    struct pico_queue q_in;
+    struct pico_queue q_out;
+
+    void (*wakeup)(uint16_t ev, struct pico_socket *s);
+
+
+#ifdef PICO_SUPPORT_TCP
+    /* For the TCP backlog queue */
+    struct pico_socket *backlog;
+    struct pico_socket *next;
+    struct pico_socket *parent;
+    uint16_t max_backlog;
+    uint16_t number_of_pending_conn;
+#endif
+#ifdef PICO_SUPPORT_MCAST
+    struct pico_tree *MCASTListen;
+#endif
+    uint16_t ev_pending;
+
+    struct pico_device *dev;
+
+    /* Private field. */
+    int id;
+    uint16_t state;
+    uint16_t opt_flags;
+    pico_time timestamp;
+    void *priv;
+};
+
+struct pico_remote_endpoint {
+    union pico_address remote_addr;
+    uint16_t remote_port;
+};
+
+
+/* request struct for multicast socket opt */
+struct pico_ip_mreq {
+    struct pico_ip4 mcast_group_addr;
+    struct pico_ip4 mcast_link_addr;
+};
+
+struct pico_ip_mreq_source {
+    struct pico_ip4 mcast_group_addr;
+    struct pico_ip4 mcast_source_addr;
+    struct pico_ip4 mcast_link_addr;
+};
+
+#ifdef PICO_SUPPORT_IPV6
+
+/* same as above, but ipv6 */
+struct pico_ipv6_mreq {
+    struct pico_ip6 mcast_group_addr;
+    struct pico_ip6 mcast_link_addr;
+};
+
+struct pico_ipv6_mreq_source {
+    struct pico_ip6 mcast_group_addr;
+    struct pico_ip6 mcast_source_addr;
+    struct pico_ip6 mcast_link_addr;
+};
+
+#endif
+
+#define PICO_SOCKET_STATE_UNDEFINED       0x0000u
+#define PICO_SOCKET_STATE_SHUT_LOCAL      0x0001u
+#define PICO_SOCKET_STATE_SHUT_REMOTE     0x0002u
+#define PICO_SOCKET_STATE_BOUND           0x0004u
+#define PICO_SOCKET_STATE_CONNECTED       0x0008u
+#define PICO_SOCKET_STATE_CLOSING         0x0010u
+#define PICO_SOCKET_STATE_CLOSED          0x0020u
+
+# define PICO_SOCKET_STATE_TCP                0xFF00u
+# define PICO_SOCKET_STATE_TCP_UNDEF          0x00FFu
+# define PICO_SOCKET_STATE_TCP_CLOSED         0x0100u
+# define PICO_SOCKET_STATE_TCP_LISTEN         0x0200u
+# define PICO_SOCKET_STATE_TCP_SYN_SENT       0x0300u
+# define PICO_SOCKET_STATE_TCP_SYN_RECV       0x0400u
+# define PICO_SOCKET_STATE_TCP_ESTABLISHED    0x0500u
+# define PICO_SOCKET_STATE_TCP_CLOSE_WAIT     0x0600u
+# define PICO_SOCKET_STATE_TCP_LAST_ACK       0x0700u
+# define PICO_SOCKET_STATE_TCP_FIN_WAIT1      0x0800u
+# define PICO_SOCKET_STATE_TCP_FIN_WAIT2      0x0900u
+# define PICO_SOCKET_STATE_TCP_CLOSING        0x0a00u
+# define PICO_SOCKET_STATE_TCP_TIME_WAIT      0x0b00u
+# define PICO_SOCKET_STATE_TCP_ARRAYSIZ       0x0cu
+
+
+/* Socket options */
+# define PICO_TCP_NODELAY                     1
+# define PICO_SOCKET_OPT_TCPNODELAY           0x0000u
+
+# define PICO_IP_MULTICAST_EXCLUDE            0
+# define PICO_IP_MULTICAST_INCLUDE            1
+# define PICO_IP_MULTICAST_IF                 32
+# define PICO_IP_MULTICAST_TTL                33
+# define PICO_IP_MULTICAST_LOOP               34
+# define PICO_IP_ADD_MEMBERSHIP               35
+# define PICO_IP_DROP_MEMBERSHIP              36
+# define PICO_IP_UNBLOCK_SOURCE               37
+# define PICO_IP_BLOCK_SOURCE                 38
+# define PICO_IP_ADD_SOURCE_MEMBERSHIP        39
+# define PICO_IP_DROP_SOURCE_MEMBERSHIP       40
+
+# define PICO_SOCKET_OPT_MULTICAST_LOOP       1
+
+# define PICO_SOCKET_OPT_RCVBUF               52
+# define PICO_SOCKET_OPT_SNDBUF               53
+
+/* Constants */
+# define PICO_IP_DEFAULT_MULTICAST_TTL        1
+# define PICO_IP_DEFAULT_MULTICAST_LOOP       1
+
+#define PICO_SOCKET_TIMEOUT                   90000u /* 90 seconds */
+#define PICO_SOCKET_BOUND_TIMEOUT             30000u /* 30 seconds */
+
+#define PICO_SOCKET_SHUTDOWN_WRITE 0x01u
+#define PICO_SOCKET_SHUTDOWN_READ  0x02u
+#define TCPSTATE(s) ((s)->state & PICO_SOCKET_STATE_TCP)
+
+#define PICO_SOCK_EV_RD 1u
+#define PICO_SOCK_EV_WR 2u
+#define PICO_SOCK_EV_CONN 4u
+#define PICO_SOCK_EV_CLOSE 8u
+#define PICO_SOCK_EV_FIN 0x10u
+#define PICO_SOCK_EV_ERR 0x80u
+
+struct pico_msginfo {
+    struct pico_device *dev;
+    uint8_t ttl;
+    uint8_t tos;
+};
+
+struct pico_socket *pico_socket_open(uint16_t net, uint16_t proto, void (*wakeup)(uint16_t ev, struct pico_socket *s));
+
+int pico_socket_read(struct pico_socket *s, void *buf, int len);
+int pico_socket_write(struct pico_socket *s, const void *buf, int len);
+
+int pico_socket_sendto(struct pico_socket *s, const void *buf, int len, void *dst, uint16_t remote_port);
+int pico_socket_sendto_extended(struct pico_socket *s, const void *buf, const int len,
+                                void *dst, uint16_t remote_port, struct pico_msginfo *msginfo);
+
+int pico_socket_recvfrom(struct pico_socket *s, void *buf, int len, void *orig, uint16_t *local_port);
+int pico_socket_recvfrom_extended(struct pico_socket *s, void *buf, int len, void *orig,
+                                  uint16_t *remote_port, struct pico_msginfo *msginfo);
+
+int pico_socket_send(struct pico_socket *s, const void *buf, int len);
+int pico_socket_recv(struct pico_socket *s, void *buf, int len);
+
+int pico_socket_bind(struct pico_socket *s, void *local_addr, uint16_t *port);
+int pico_socket_getname(struct pico_socket *s, void *local_addr, uint16_t *port, uint16_t *proto);
+int pico_socket_getpeername(struct pico_socket *s, void *remote_addr, uint16_t *port, uint16_t *proto);
+
+int pico_socket_connect(struct pico_socket *s, const void *srv_addr, uint16_t remote_port);
+int pico_socket_listen(struct pico_socket *s, const int backlog);
+struct pico_socket *pico_socket_accept(struct pico_socket *s, void *orig, uint16_t *port);
+int8_t pico_socket_del(struct pico_socket *s);
+
+int pico_socket_setoption(struct pico_socket *s, int option, void *value);
+int pico_socket_getoption(struct pico_socket *s, int option, void *value);
+
+int pico_socket_shutdown(struct pico_socket *s, int mode);
+int pico_socket_close(struct pico_socket *s);
+
+struct pico_frame *pico_socket_frame_alloc(struct pico_socket *s, uint16_t len);
+
+#ifdef PICO_SUPPORT_IPV4
+# define is_sock_ipv4(x) (x->net == &pico_proto_ipv4)
+#else
+# define is_sock_ipv4(x) (0)
+#endif
+
+#ifdef PICO_SUPPORT_IPV6
+# define is_sock_ipv6(x) (x->net == &pico_proto_ipv6)
+#else
+# define is_sock_ipv6(x) (0)
+#endif
+
+#ifdef PICO_SUPPORT_UDP
+# define is_sock_udp(x) (x->proto == &pico_proto_udp)
+#else
+# define is_sock_udp(x) (0)
+#endif
+
+#ifdef PICO_SUPPORT_TCP
+# define is_sock_tcp(x) (x->proto == &pico_proto_tcp)
+#else
+# define is_sock_tcp(x) (0)
+#endif
+
+/* Interface towards transport protocol */
+int pico_transport_process_in(struct pico_protocol *self, struct pico_frame *f);
+struct pico_socket *pico_socket_clone(struct pico_socket *facsimile);
+int8_t pico_socket_add(struct pico_socket *s);
+int pico_transport_error(struct pico_frame *f, uint8_t proto, int code);
+
+/* Socket loop */
+int pico_sockets_loop(int loop_score);
+struct pico_socket*pico_sockets_find(uint16_t local, uint16_t remote);
+/* Port check */
+int pico_is_port_free(uint16_t proto, uint16_t port, void *addr, void *net);
+
+struct pico_sockport *pico_get_sockport(uint16_t proto, uint16_t port);
+
+uint32_t pico_socket_get_mss(struct pico_socket *s);
+int pico_socket_set_family(struct pico_socket *s, uint16_t family);
+
+int pico_count_sockets(uint8_t proto);
+
+#define PICO_SOCKET_SETOPT_EN(socket, index)  (socket->opt_flags |=  (1 << index))
+#define PICO_SOCKET_SETOPT_DIS(socket, index) (socket->opt_flags &= (uint16_t) ~(1 << index))
+#define PICO_SOCKET_GETOPT(socket, index) ((socket->opt_flags & (1u << index)) != 0)
+
+
+#endif
diff --git a/net/picotcp/include/pico_socket_multicast.h b/net/picotcp/include/pico_socket_multicast.h
new file mode 100644
index 0000000..44c30c5
--- /dev/null
+++ b/net/picotcp/include/pico_socket_multicast.h
@@ -0,0 +1,10 @@
+#ifndef PICO_SOCKET_MULTICAST_H
+#define PICO_SOCKET_MULTICAST_H
+int pico_socket_mcast_filter(struct pico_socket *s, union pico_address *mcast_group, union pico_address *src);
+void pico_multicast_delete(struct pico_socket *s);
+int pico_setsockopt_mcast(struct pico_socket *s, int option, void *value);
+int pico_getsockopt_mcast(struct pico_socket *s, int option, void *value);
+int pico_udp_get_mc_ttl(struct pico_socket *s, uint8_t *ttl);
+int pico_udp_set_mc_ttl(struct pico_socket *s, void *_ttl);
+
+#endif
diff --git a/net/picotcp/include/pico_stack.h b/net/picotcp/include/pico_stack.h
new file mode 100644
index 0000000..69b0bf1
--- /dev/null
+++ b/net/picotcp/include/pico_stack.h
@@ -0,0 +1,87 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+ *********************************************************************/
+#ifndef INCLUDE_PICO_STACK
+#define INCLUDE_PICO_STACK
+#include "pico_config.h"
+#include "pico_frame.h"
+
+#define PICO_MAX_TIMERS 20
+
+#define PICO_ETH_MRU (1514u)
+#define PICO_IP_MRU (1500u)
+
+/* ===== RECEIVING FUNCTIONS (from dev up to socket) ===== */
+
+/* TRANSPORT LEVEL */
+/* interface towards network */
+int32_t pico_transport_receive(struct pico_frame *f, uint8_t proto);
+
+/* NETWORK LEVEL */
+/* interface towards ethernet */
+int32_t pico_network_receive(struct pico_frame *f);
+
+
+/* LOWEST LEVEL: interface towards devices. */
+/* Device driver will call this function which returns immediately.
+ * Incoming packet will be processed later on in the dev loop.
+ * The zerocopy version will associate the current buffer to the newly created frame.
+ * Warning: the buffer used in the zerocopy version MUST have been allocated using PICO_ZALLOC()
+ */
+int32_t pico_stack_recv(struct pico_device *dev, uint8_t *buffer, uint32_t len);
+int32_t pico_stack_recv_zerocopy(struct pico_device *dev, uint8_t *buffer, uint32_t len);
+int32_t pico_stack_recv_zerocopy_ext_buffer(struct pico_device *dev, uint8_t *buffer, uint32_t len);
+int32_t pico_stack_recv_zerocopy_ext_buffer_notify(struct pico_device *dev, uint8_t *buffer, uint32_t len, void (*notify_free)(uint8_t *buffer));
+
+/* ===== SENDING FUNCTIONS (from socket down to dev) ===== */
+
+int32_t pico_network_send(struct pico_frame *f);
+int32_t pico_sendto_dev(struct pico_frame *f);
+
+#ifdef PICO_SUPPORT_ETH
+int32_t pico_ethernet_send(struct pico_frame *f);
+
+/* The pico_ethernet_receive() function is used by
+ * those devices supporting ETH in order to push packets up
+ * into the stack.
+ */
+/* DATALINK LEVEL */
+int32_t pico_ethernet_receive(struct pico_frame *f);
+#else
+/* When ETH is not supported by the stack... */
+#   define pico_ethernet_send(f)    (-1)
+#   define pico_ethernet_receive(f) (-1)
+#endif
+
+/* ----- Initialization ----- */
+int pico_stack_init(void);
+
+/* ----- Loop Function. ----- */
+void pico_stack_tick(void);
+void pico_stack_loop(void);
+
+/* ---- Notifications for stack errors */
+int pico_notify_socket_unreachable(struct pico_frame *f);
+int pico_notify_proto_unreachable(struct pico_frame *f);
+int pico_notify_dest_unreachable(struct pico_frame *f);
+int pico_notify_ttl_expired(struct pico_frame *f);
+int pico_notify_frag_expired(struct pico_frame *f);
+int pico_notify_pkt_too_big(struct pico_frame *f);
+
+/* Various. */
+struct pico_timer;
+int pico_source_is_local(struct pico_frame *f);
+int pico_frame_dst_is_unicast(struct pico_frame *f);
+void pico_store_network_origin(void *src, struct pico_frame *f);
+struct pico_timer *pico_timer_add(pico_time expire, void (*timer)(pico_time, void *), void *arg);
+void pico_timer_cancel(struct pico_timer *t);
+pico_time pico_timer_get_expire(struct pico_timer *t);
+uint32_t pico_rand(void);
+void pico_rand_feed(uint32_t feed);
+void pico_to_lowercase(char *str);
+int pico_address_compare(union pico_address *a, union pico_address *b, uint16_t proto);
+int32_t pico_seq_compare(uint32_t a, uint32_t b);
+
+#endif
diff --git a/net/picotcp/include/pico_tree.h b/net/picotcp/include/pico_tree.h
new file mode 100644
index 0000000..8667a1f
--- /dev/null
+++ b/net/picotcp/include/pico_tree.h
@@ -0,0 +1,93 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   Author: Andrei Carp <andrei.carp@tass.be>
+ *********************************************************************/
+
+#ifndef PICO_RBTREE_H
+#define PICO_RBTREE_H
+
+#include "pico_config.h"
+
+/* This is used to declare a new tree, leaf root by default */
+#define PICO_TREE_DECLARE(name, compareFunction) \
+    struct pico_tree name = \
+    { \
+        &LEAF, \
+        compareFunction \
+    }
+
+#define USE_PICO_PAGE0_ZALLOC (1)
+#define USE_PICO_ZALLOC (2)
+
+struct pico_tree_node
+{
+    void*keyValue; /* generic key */
+    struct pico_tree_node*parent;
+    struct pico_tree_node*leftChild;
+    struct pico_tree_node*rightChild;
+    uint8_t color;
+};
+
+struct pico_tree
+{
+    struct pico_tree_node *root;  /* root of the tree */
+
+    /* this function directly provides the keys as parameters not the nodes. */
+    int (*compare)(void*keyA, void*keyB);
+};
+
+extern struct pico_tree_node LEAF; /* generic leaf node */
+
+#ifdef PICO_SUPPORT_MM
+void *pico_tree_insert_implementation(struct pico_tree *tree, void *key, uint8_t allocator);
+void *pico_tree_delete_implementation(struct pico_tree *tree, void *key, uint8_t allocator);
+#endif
+
+
+/*
+ * Manipulation functions
+ */
+void *pico_tree_insert(struct pico_tree *tree, void *key);
+void *pico_tree_delete(struct pico_tree *tree, void *key);
+void *pico_tree_findKey(struct pico_tree *tree, void *key);
+void    pico_tree_drop(struct pico_tree *tree);
+int     pico_tree_empty(struct pico_tree *tree);
+struct pico_tree_node *pico_tree_findNode(struct pico_tree *tree, void *key);
+
+void *pico_tree_first(struct pico_tree *tree);
+void *pico_tree_last(struct pico_tree *tree);
+/*
+ * Traverse functions
+ */
+struct pico_tree_node *pico_tree_lastNode(struct pico_tree_node *node);
+struct pico_tree_node *pico_tree_firstNode(struct pico_tree_node *node);
+struct pico_tree_node *pico_tree_next(struct pico_tree_node *node);
+struct pico_tree_node *pico_tree_prev(struct pico_tree_node *node);
+
+/*
+ * For each macros
+ */
+
+#define pico_tree_foreach(idx, tree) \
+    for ((idx) = pico_tree_firstNode((tree)->root); \
+         (idx) != &LEAF; \
+         (idx) = pico_tree_next(idx))
+
+#define pico_tree_foreach_reverse(idx, tree) \
+    for ((idx) = pico_tree_lastNode((tree)->root); \
+         (idx) != &LEAF; \
+         (idx) = pico_tree_prev(idx))
+
+#define pico_tree_foreach_safe(idx, tree, idx2) \
+    for ((idx) = pico_tree_firstNode((tree)->root); \
+         ((idx) != &LEAF) && ((idx2) = pico_tree_next(idx), 1); \
+         (idx) = (idx2))
+
+#define pico_tree_foreach_reverse_safe(idx, tree, idx2) \
+    for ((idx) = pico_tree_lastNode((tree)->root); \
+         ((idx) != &LEAF) && ((idx2) = pico_tree_prev(idx), 1); \
+         (idx) = (idx2))
+
+#endif
diff --git a/net/picotcp/modules/pico_aodv.h b/net/picotcp/modules/pico_aodv.h
new file mode 100644
index 0000000..a3e9b66
--- /dev/null
+++ b/net/picotcp/modules/pico_aodv.h
@@ -0,0 +1,131 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   .
+
+   Author: Daniele Lacamera <daniele.lacamera@altran.com>
+ *********************************************************************/
+#ifndef PICO_AODV_H_
+#define PICO_AODV_H_
+#include <stdint.h>
+
+/* RFC3561 */
+#define PICO_AODV_PORT (654)
+
+/* RFC3561 $10 */
+#define AODV_ACTIVE_ROUTE_TIMEOUT     (8000u) /* Conservative value for link breakage detection */
+#define AODV_DELETE_PERIOD            (5 * AODV_ACTIVE_ROUTE_TIMEOUT) /* Recommended value K = 5 */
+#define AODV_ALLOWED_HELLO_LOSS       (4) /* conservative */
+#define AODV_NET_DIAMETER             ((uint8_t)(35))
+#define AODV_RREQ_RETRIES             (2)
+#define AODV_NODE_TRAVERSAL_TIME      (40)
+#define AODV_HELLO_INTERVAL           (1000)
+#define AODV_LOCAL_ADD_TTL            2
+#define AODV_RREQ_RATELIMIT           (10)
+#define AODV_TIMEOUT_BUFFER           (2)
+#define AODV_TTL_START                ((uint8_t)(1))
+#define AODV_TTL_INCREMENT            2
+#define AODV_TTL_THRESHOLD            ((uint8_t)(7))
+#define AODV_RERR_RATELIMIT           (10)
+#define AODV_MAX_REPAIR_TTL           ((uint8_t)(AODV_NET_DIAMETER / 3))
+#define AODV_MY_ROUTE_TIMEOUT         (2 * AODV_ACTIVE_ROUTE_TIMEOUT)
+#define AODV_NET_TRAVERSAL_TIME       (2 * AODV_NODE_TRAVERSAL_TIME * AODV_NET_DIAMETER)
+#define AODV_BLACKLIST_TIMEOUT        (AODV_RREQ_RETRIES * AODV_NET_TRAVERSAL_TIME)
+#define AODV_NEXT_HOP_WAIT            (AODV_NODE_TRAVERSAL_TIME + 10)
+#define AODV_PATH_DISCOVERY_TIME      (2 * AODV_NET_TRAVERSAL_TIME)
+#define AODV_RING_TRAVERSAL_TIME(ttl)   (2 * AODV_NODE_TRAVERSAL_TIME * (ttl + AODV_TIMEOUT_BUFFER))
+/* End section RFC3561 $10 */
+
+
+#define AODV_TYPE_RREQ 1
+#define AODV_TYPE_RREP 2
+#define AODV_TYPE_RERR 3
+#define AODV_TYPE_RACK 4
+
+PACKED_STRUCT_DEF pico_aodv_rreq
+{
+    uint8_t type;
+    uint16_t req_flags;
+    uint8_t hop_count;
+    uint32_t rreq_id;
+    uint32_t dest;
+    uint32_t dseq;
+    uint32_t orig;
+    uint32_t oseq;
+};
+
+#define AODV_RREQ_FLAG_J 0x8000
+#define AODV_RREQ_FLAG_R 0x4000
+#define AODV_RREQ_FLAG_G 0x2000
+#define AODV_RREQ_FLAG_D 0x1000
+#define AODV_RREQ_FLAG_U 0x0800
+#define AODV_RREQ_FLAG_RESERVED 0x07FF
+
+PACKED_STRUCT_DEF pico_aodv_rrep
+{
+    uint8_t type;
+    uint8_t rep_flags;
+    uint8_t prefix_sz;
+    uint8_t hop_count;
+    uint32_t dest;
+    uint32_t dseq;
+    uint32_t orig;
+    uint32_t lifetime;
+};
+
+#define AODV_RREP_MAX_PREFIX 0x1F
+#define AODV_RREP_FLAG_R 0x80
+#define AODV_RREP_FLAG_A 0x40
+#define AODV_RREP_FLAG_RESERVED 0x3F
+
+#define PICO_AODV_NODE_NEW          0x0000
+#define PICO_AODV_NODE_SYNC         0x0001
+#define PICO_AODV_NODE_REQUESTING   0x0002
+#define PICO_AODV_NODE_ROUTE_UP     0x0004
+#define PICO_AODV_NODE_ROUTE_DOWN   0x0008
+#define PICO_AODV_NODE_IDLING       0x0010
+#define PICO_AODV_NODE_UNREACH      0x0020
+
+#define PICO_AODV_ACTIVE(node) ((node->flags & PICO_AODV_NODE_ROUTE_UP) && (node->flags & PICO_AODV_NODE_ROUTE_DOWN))
+
+
+struct pico_aodv_node
+{
+    union pico_address dest;
+    pico_time last_seen;
+    pico_time fwd_time;
+    uint32_t dseq;
+    uint16_t flags;
+    uint8_t metric;
+    uint8_t ring_ttl;
+    uint8_t rreq_retry;
+};
+
+PACKED_STRUCT_DEF pico_aodv_unreachable
+{
+    uint32_t addr;
+    uint32_t dseq;
+};
+
+PACKED_STRUCT_DEF pico_aodv_rerr
+{
+    uint8_t type;
+    uint16_t rerr_flags;
+    uint8_t dst_count;
+    uint32_t unreach_addr;
+    uint32_t unreach_dseq;
+    struct pico_aodv_unreachable unreach[1]; /* unrechable nodes: must be at least 1. See dst_count field above */
+};
+
+PACKED_STRUCT_DEF pico_aodv_rack
+{
+    uint8_t type;
+    uint8_t reserved;
+};
+
+int pico_aodv_init(void);
+int pico_aodv_add(struct pico_device *dev);
+int pico_aodv_lookup(const union pico_address *addr);
+void pico_aodv_refresh(const union pico_address *addr);
+#endif
diff --git a/net/picotcp/modules/pico_arp.c b/net/picotcp/modules/pico_arp.c
new file mode 100644
index 0000000..f205bfe
--- /dev/null
+++ b/net/picotcp/modules/pico_arp.c
@@ -0,0 +1,531 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   .
+
+   Authors: Daniele Lacamera
+ *********************************************************************/
+
+
+#include "pico_config.h"
+#include "pico_arp.h"
+#include "pico_tree.h"
+#include "pico_ipv4.h"
+#include "pico_device.h"
+#include "pico_stack.h"
+
+extern const uint8_t PICO_ETHADDR_ALL[6];
+#define PICO_ARP_TIMEOUT 600000llu
+#define PICO_ARP_RETRY 300lu
+#define PICO_ARP_MAX_PENDING 5
+
+#ifdef DEBUG_ARP
+    #define arp_dbg dbg
+#else
+    #define arp_dbg(...) do {} while(0)
+#endif
+
+static int max_arp_reqs = PICO_ARP_MAX_RATE;
+static struct pico_frame *frames_queued[PICO_ARP_MAX_PENDING] = { };
+
+static void pico_arp_queued_trigger(void)
+{
+    int i;
+    struct pico_frame *f;
+    for (i = 0; i < PICO_ARP_MAX_PENDING; i++)
+    {
+        f = frames_queued[i];
+        if (f) {
+            pico_ethernet_send(f);
+            frames_queued[i] = NULL;
+        }
+    }
+}
+
+static void update_max_arp_reqs(pico_time now, void *unused)
+{
+    IGNORE_PARAMETER(now);
+    IGNORE_PARAMETER(unused);
+    if (max_arp_reqs < PICO_ARP_MAX_RATE)
+        max_arp_reqs++;
+
+    pico_timer_add(PICO_ARP_INTERVAL / PICO_ARP_MAX_RATE, &update_max_arp_reqs, NULL);
+}
+
+void pico_arp_init(void)
+{
+    pico_timer_add(PICO_ARP_INTERVAL / PICO_ARP_MAX_RATE, &update_max_arp_reqs, NULL);
+}
+
+PACKED_STRUCT_DEF pico_arp_hdr
+{
+    uint16_t htype;
+    uint16_t ptype;
+    uint8_t hsize;
+    uint8_t psize;
+    uint16_t opcode;
+    uint8_t s_mac[PICO_SIZE_ETH];
+    struct pico_ip4 src;
+    uint8_t d_mac[PICO_SIZE_ETH];
+    struct pico_ip4 dst;
+};
+
+
+
+/* Callback handler for ip conflict service (e.g. IPv4 SLAAC)
+ *  Whenever the IP address registered here is seen in the network,
+ *  the callback is awaken to take countermeasures against IP collisions.
+ *
+ */
+
+struct arp_service_ipconflict {
+    struct pico_eth mac;
+    struct pico_ip4 ip;
+    void (*conflict)(void);
+};
+
+static struct arp_service_ipconflict conflict_ipv4;
+
+
+
+#define PICO_SIZE_ARPHDR ((sizeof(struct pico_arp_hdr)))
+
+/* Arp Entries for the tables. */
+struct pico_arp {
+/* CAREFUL MAN! ARP entry MUST begin with a pico_eth structure,
+ * due to in-place casting!!! */
+    struct pico_eth eth;
+    struct pico_ip4 ipv4;
+    int arp_status;
+    pico_time timestamp;
+    struct pico_device *dev;
+    struct pico_timer *timer;
+};
+
+
+
+/*****************/
+/**  ARP TREE **/
+/*****************/
+
+/* Routing destination */
+
+static int arp_compare(void *ka, void *kb)
+{
+    struct pico_arp *a = ka, *b = kb;
+    return pico_ipv4_compare(&a->ipv4, &b->ipv4);
+}
+
+PICO_TREE_DECLARE(arp_tree, arp_compare);
+
+/*********************/
+/**  END ARP TREE **/
+/*********************/
+
+struct pico_eth *pico_arp_lookup(struct pico_ip4 *dst)
+{
+    struct pico_arp search, *found;
+    search.ipv4.addr = dst->addr;
+    found = pico_tree_findKey(&arp_tree, &search);
+    if (found && (found->arp_status != PICO_ARP_STATUS_STALE))
+        return &found->eth;
+
+    return NULL;
+}
+
+struct pico_ip4 *pico_arp_reverse_lookup(struct pico_eth *dst)
+{
+    struct pico_arp*search;
+    struct pico_tree_node *index;
+    pico_tree_foreach(index, &arp_tree){
+        search = index->keyValue;
+        if(memcmp(&(search->eth.addr), &dst->addr, 6) == 0)
+            return &search->ipv4;
+    }
+    return NULL;
+}
+
+static void pico_arp_unreachable(struct pico_ip4 *a)
+{
+    int i;
+    struct pico_frame *f;
+    struct pico_ipv4_hdr *hdr;
+    struct pico_ip4 dst;
+    for (i = 0; i < PICO_ARP_MAX_PENDING; i++)
+    {
+        f = frames_queued[i];
+        if (f) {
+            hdr = (struct pico_ipv4_hdr *) f->net_hdr;
+            dst = pico_ipv4_route_get_gateway(&hdr->dst);
+            if (!dst.addr)
+                dst.addr = hdr->dst.addr;
+
+            if (dst.addr ==  a->addr) {
+                if (!pico_source_is_local(f)) {
+                    pico_notify_dest_unreachable(f);
+                }
+
+                pico_frame_discard(f);
+                frames_queued[i] = NULL;
+            }
+        }
+    }
+}
+
+static void pico_arp_retry(struct pico_frame *f, struct pico_ip4 *where)
+{
+    if (++f->failure_count < 4) {
+        arp_dbg ("================= ARP REQUIRED: %d =============\n\n", f->failure_count);
+        /* check if dst is local (gateway = 0), or if to use gateway */
+        pico_arp_request(f->dev, where, PICO_ARP_QUERY);
+    } else {
+        pico_arp_unreachable(where);
+    }
+}
+
+struct pico_eth *pico_arp_get(struct pico_frame *f)
+{
+    struct pico_eth *a4;
+    struct pico_ip4 gateway;
+    struct pico_ip4 *where;
+    struct pico_ipv4_hdr *hdr = (struct pico_ipv4_hdr *) f->net_hdr;
+    struct pico_ipv4_link *l;
+    if (!hdr)
+        return NULL;
+
+    l = pico_ipv4_link_get(&hdr->dst);
+    if(l) {
+        /* address belongs to ourself */
+        return &l->dev->eth->mac;
+    }
+
+    gateway = pico_ipv4_route_get_gateway(&hdr->dst);
+    /* check if dst is local (gateway = 0), or if to use gateway */
+    if (gateway.addr != 0)
+        where = &gateway;
+    else
+        where = &hdr->dst;
+
+    a4 = pico_arp_lookup(where);      /* check if dst ip mac in cache */
+
+    if (!a4)
+        pico_arp_retry(f, where);
+
+    return a4;
+}
+
+
+void pico_arp_postpone(struct pico_frame *f)
+{
+    int i;
+    for (i = 0; i < PICO_ARP_MAX_PENDING; i++)
+    {
+        if (!frames_queued[i]) {
+            frames_queued[i] = pico_frame_copy(f);
+            return;
+        }
+    }
+    /* Not possible to enqueue: caller will discard packet */
+}
+
+
+#ifdef DEBUG_ARP
+void dbg_arp(void)
+{
+    struct pico_arp *a;
+    struct pico_tree_node *index;
+
+    pico_tree_foreach(index, &arp_tree) {
+        a = index->keyValue;
+        arp_dbg("ARP to  %08x, mac: %02x:%02x:%02x:%02x:%02x:%02x\n", a->ipv4.addr, a->eth.addr[0], a->eth.addr[1], a->eth.addr[2], a->eth.addr[3], a->eth.addr[4], a->eth.addr[5] );
+    }
+}
+#endif
+
+static void arp_expire(pico_time now, void *_stale)
+{
+    struct pico_arp *stale = (struct pico_arp *) _stale;
+    if (now >= (stale->timestamp + PICO_ARP_TIMEOUT)) {
+        stale->arp_status = PICO_ARP_STATUS_STALE;
+        arp_dbg("ARP: Setting arp_status to STALE\n");
+        pico_arp_request(stale->dev, &stale->ipv4, PICO_ARP_QUERY);
+    } else {
+        /* Timer must be rescheduled, ARP entry has been renewed lately.
+         * No action required to refresh the entry, will check on the next timeout */
+        pico_timer_add(PICO_ARP_TIMEOUT + stale->timestamp - now, arp_expire, stale);
+    }
+}
+
+static void pico_arp_add_entry(struct pico_arp *entry)
+{
+    entry->arp_status = PICO_ARP_STATUS_REACHABLE;
+    entry->timestamp  = PICO_TIME();
+
+    pico_tree_insert(&arp_tree, entry);
+    arp_dbg("ARP ## reachable.\n");
+    pico_arp_queued_trigger();
+    pico_timer_add(PICO_ARP_TIMEOUT, arp_expire, entry);
+}
+
+int pico_arp_create_entry(uint8_t *hwaddr, struct pico_ip4 ipv4, struct pico_device *dev)
+{
+    struct pico_arp*arp = PICO_ZALLOC(sizeof(struct pico_arp));
+    if(!arp) {
+        pico_err = PICO_ERR_ENOMEM;
+        return -1;
+    }
+
+    memcpy(arp->eth.addr, hwaddr, 6);
+    arp->ipv4.addr = ipv4.addr;
+    arp->dev = dev;
+
+    pico_arp_add_entry(arp);
+
+    return 0;
+}
+
+static void pico_arp_check_conflict(struct pico_arp_hdr *hdr)
+{
+
+    if ((conflict_ipv4.conflict) &&
+        ((conflict_ipv4.ip.addr == hdr->src.addr) &&
+         (memcmp(hdr->s_mac, conflict_ipv4.mac.addr, PICO_SIZE_ETH) != 0)))
+        conflict_ipv4.conflict();
+}
+
+static struct pico_arp *pico_arp_lookup_entry(struct pico_frame *f)
+{
+    struct pico_arp search;
+    struct pico_arp *found = NULL;
+    struct pico_arp_hdr *hdr = (struct pico_arp_hdr *) f->net_hdr;
+    /* Populate a new arp entry */
+    search.ipv4.addr = hdr->src.addr;
+
+    /* Search for already existing entry */
+    found = pico_tree_findKey(&arp_tree, &search);
+    if (found) {
+        if (found->arp_status == PICO_ARP_STATUS_STALE) {
+            /* Replace if stale */
+            pico_tree_delete(&arp_tree, found);
+            pico_arp_add_entry(found);
+        } else {
+            /* Update mac address */
+            memcpy(found->eth.addr, hdr->s_mac, PICO_SIZE_ETH);
+            arp_dbg("ARP entry updated!\n");
+
+            /* Refresh timestamp, this will force a reschedule on the next timeout*/
+            found->timestamp = PICO_TIME();
+        }
+    }
+
+    return found;
+}
+
+
+static int pico_arp_check_incoming_hdr_type(struct pico_arp_hdr *h)
+{
+    /* Check the hardware type and protocol */
+    if ((h->htype != PICO_ARP_HTYPE_ETH) || (h->ptype != PICO_IDETH_IPV4))
+        return -1;
+
+    return 0;
+}
+
+static int pico_arp_check_incoming_hdr(struct pico_frame *f, struct pico_ip4 *dst_addr)
+{
+    struct pico_arp_hdr *hdr = (struct pico_arp_hdr *) f->net_hdr;
+    if (!hdr)
+        return -1;
+
+    dst_addr->addr = hdr->dst.addr;
+    if (pico_arp_check_incoming_hdr_type(hdr) < 0)
+        return -1;
+
+    /* The source mac address must not be a multicast or broadcast address */
+    if (hdr->s_mac[0] & 0x01)
+        return -1;
+
+    return 0;
+}
+
+static void pico_arp_reply_on_request(struct pico_frame *f, struct pico_ip4 me)
+{
+    struct pico_arp_hdr *hdr;
+    struct pico_eth_hdr *eh;
+
+    hdr = (struct pico_arp_hdr *) f->net_hdr;
+    eh = (struct pico_eth_hdr *)f->datalink_hdr;
+    if (hdr->opcode != PICO_ARP_REQUEST)
+        return;
+
+    hdr->opcode = PICO_ARP_REPLY;
+    memcpy(hdr->d_mac, hdr->s_mac, PICO_SIZE_ETH);
+    memcpy(hdr->s_mac, f->dev->eth->mac.addr, PICO_SIZE_ETH);
+    hdr->dst.addr = hdr->src.addr;
+    hdr->src.addr = me.addr;
+
+    /* Prepare eth header for arp reply */
+    memcpy(eh->daddr, eh->saddr, PICO_SIZE_ETH);
+    memcpy(eh->saddr, f->dev->eth->mac.addr, PICO_SIZE_ETH);
+    f->start = f->datalink_hdr;
+    f->len = PICO_SIZE_ETHHDR + PICO_SIZE_ARPHDR;
+    f->dev->send(f->dev, f->start, (int)f->len);
+}
+
+static int pico_arp_check_flooding(struct pico_frame *f, struct pico_ip4 me)
+{
+    struct pico_device *link_dev;
+    struct pico_arp_hdr *hdr;
+    hdr = (struct pico_arp_hdr *) f->net_hdr;
+
+    /* Prevent ARP flooding */
+    link_dev = pico_ipv4_link_find(&me);
+    if ((link_dev == f->dev) && (hdr->opcode == PICO_ARP_REQUEST)) {
+        if (max_arp_reqs == 0)
+            return -1;
+        else
+            max_arp_reqs--;
+    }
+
+    /* Check if we are the target IP address */
+    if (link_dev != f->dev)
+        return -1;
+
+    return 0;
+}
+
+static int pico_arp_process_in(struct pico_frame *f, struct pico_arp_hdr *hdr, struct pico_arp *found)
+{
+    struct pico_ip4 me;
+    if (pico_arp_check_incoming_hdr(f, &me) < 0) {
+        pico_frame_discard(f);
+        return -1;
+    }
+
+    if (pico_arp_check_flooding(f, me) < 0) {
+        pico_frame_discard(f);
+        return -1;
+    }
+
+    /* If no existing entry was found, create a new entry, or fail trying. */
+    if ((!found) && (pico_arp_create_entry(hdr->s_mac, hdr->src, f->dev) < 0)) {
+        pico_frame_discard(f);
+        return -1;
+    }
+
+    /* If the packet is a request, send a reply */
+    pico_arp_reply_on_request(f, me);
+
+#ifdef DEBUG_ARP
+    dbg_arp();
+#endif
+    pico_frame_discard(f);
+    return 0;
+}
+
+int pico_arp_receive(struct pico_frame *f)
+{
+    struct pico_arp_hdr *hdr;
+    struct pico_arp *found = NULL;
+
+    hdr = (struct pico_arp_hdr *) f->net_hdr;
+    if (!hdr)
+        return -1;
+
+    pico_arp_check_conflict(hdr);
+    found = pico_arp_lookup_entry(f);
+    return pico_arp_process_in(f, hdr, found);
+
+}
+
+static int32_t pico_arp_request_xmit(struct pico_device *dev, struct pico_frame *f, struct pico_ip4 *src, struct pico_ip4 *dst, uint8_t type)
+{
+    struct pico_arp_hdr *ah = (struct pico_arp_hdr *) (f->start + PICO_SIZE_ETHHDR);
+    int ret;
+
+    /* Fill arp header */
+    ah->htype  = PICO_ARP_HTYPE_ETH;
+    ah->ptype  = PICO_IDETH_IPV4;
+    ah->hsize  = PICO_SIZE_ETH;
+    ah->psize  = PICO_SIZE_IP4;
+    ah->opcode = PICO_ARP_REQUEST;
+    memcpy(ah->s_mac, dev->eth->mac.addr, PICO_SIZE_ETH);
+
+    switch (type) {
+    case PICO_ARP_ANNOUNCE:
+        ah->src.addr = dst->addr;
+        ah->dst.addr = dst->addr;
+        break;
+    case PICO_ARP_PROBE:
+        ah->src.addr = 0;
+        ah->dst.addr = dst->addr;
+        break;
+    case PICO_ARP_QUERY:
+        ah->src.addr = src->addr;
+        ah->dst.addr = dst->addr;
+        break;
+    default:
+        pico_frame_discard(f);
+        return -1;
+    }
+    arp_dbg("Sending arp request.\n");
+    ret = dev->send(dev, f->start, (int) f->len);
+    pico_frame_discard(f);
+    return ret;
+}
+
+int32_t pico_arp_request(struct pico_device *dev, struct pico_ip4 *dst, uint8_t type)
+{
+    struct pico_frame *q = pico_frame_alloc(PICO_SIZE_ETHHDR + PICO_SIZE_ARPHDR);
+    struct pico_eth_hdr *eh;
+    struct pico_ip4 *src = NULL;
+
+    if (!q)
+        return -1;
+
+    if (type == PICO_ARP_QUERY)
+    {
+        src = pico_ipv4_source_find(dst);
+        if (!src) {
+            pico_frame_discard(q);
+            return -1;
+        }
+    }
+
+    arp_dbg("QUERY: %08x\n", dst->addr);
+
+    eh = (struct pico_eth_hdr *)q->start;
+
+    /* Fill eth header */
+    memcpy(eh->saddr, dev->eth->mac.addr, PICO_SIZE_ETH);
+    memcpy(eh->daddr, PICO_ETHADDR_ALL, PICO_SIZE_ETH);
+    eh->proto = PICO_IDETH_ARP;
+
+    return pico_arp_request_xmit(dev, q, src, dst, type);
+}
+
+int pico_arp_get_neighbors(struct pico_device *dev, struct pico_ip4 *neighbors, int maxlen)
+{
+    struct pico_arp*search;
+    struct pico_tree_node *index;
+    int i = 0;
+    pico_tree_foreach(index, &arp_tree){
+        search = index->keyValue;
+        if (search->dev == dev) {
+            neighbors[i++].addr = search->ipv4.addr;
+            if (i >= maxlen)
+                return i;
+        }
+    }
+    return i;
+}
+
+void pico_arp_register_ipconflict(struct pico_ip4 *ip, struct pico_eth *mac, void (*cb)(void))
+{
+    conflict_ipv4.conflict = cb;
+    conflict_ipv4.ip.addr = ip->addr;
+    if (mac != NULL)
+        memcpy(conflict_ipv4.mac.addr, mac, 6);
+}
+
diff --git a/net/picotcp/modules/pico_arp.h b/net/picotcp/modules/pico_arp.h
new file mode 100644
index 0000000..18e1f69
--- /dev/null
+++ b/net/picotcp/modules/pico_arp.h
@@ -0,0 +1,32 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+ *********************************************************************/
+#ifndef INCLUDE_PICO_ARP
+#define INCLUDE_PICO_ARP
+#include "pico_eth.h"
+#include "pico_device.h"
+
+int pico_arp_receive(struct pico_frame *);
+
+
+struct pico_eth *pico_arp_get(struct pico_frame *f);
+int32_t pico_arp_request(struct pico_device *dev, struct pico_ip4 *dst, uint8_t type);
+
+#define PICO_ARP_STATUS_REACHABLE 0x00
+#define PICO_ARP_STATUS_PERMANENT 0x01
+#define PICO_ARP_STATUS_STALE     0x02
+
+#define PICO_ARP_QUERY    0x00
+#define PICO_ARP_PROBE    0x01
+#define PICO_ARP_ANNOUNCE 0x02
+
+struct pico_eth *pico_arp_lookup(struct pico_ip4 *dst);
+struct pico_ip4 *pico_arp_reverse_lookup(struct pico_eth *dst);
+int pico_arp_create_entry(uint8_t*hwaddr, struct pico_ip4 ipv4, struct pico_device*dev);
+int pico_arp_get_neighbors(struct pico_device *dev, struct pico_ip4 *neighbors, int maxlen);
+void pico_arp_register_ipconflict(struct pico_ip4 *ip, struct pico_eth *mac, void (*cb)(void));
+void pico_arp_postpone(struct pico_frame *f);
+void pico_arp_init(void);
+#endif
diff --git a/net/picotcp/modules/pico_dev_loop.c b/net/picotcp/modules/pico_dev_loop.c
new file mode 100644
index 0000000..4416d0b
--- /dev/null
+++ b/net/picotcp/modules/pico_dev_loop.c
@@ -0,0 +1,66 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   Authors: Daniele Lacamera
+ *********************************************************************/
+
+
+#include "pico_device.h"
+#include "pico_dev_loop.h"
+#include "pico_stack.h"
+
+
+#define LOOP_MTU 1500
+static uint8_t l_buf[LOOP_MTU];
+static int l_bufsize = 0;
+
+
+static int pico_loop_send(struct pico_device *dev, void *buf, int len)
+{
+    IGNORE_PARAMETER(dev);
+    if (len > LOOP_MTU)
+        return 0;
+
+    if (l_bufsize == 0) {
+        memcpy(l_buf, buf, (size_t)len);
+        l_bufsize += len;
+        return len;
+    }
+
+    return 0;
+}
+
+static int pico_loop_poll(struct pico_device *dev, int loop_score)
+{
+    if (loop_score <= 0)
+        return 0;
+
+    if (l_bufsize > 0) {
+        pico_stack_recv(dev, l_buf, (uint32_t)l_bufsize);
+        l_bufsize = 0;
+        loop_score--;
+    }
+
+    return loop_score;
+}
+
+
+struct pico_device *pico_loop_create(void)
+{
+    struct pico_device *loop = PICO_ZALLOC(sizeof(struct pico_device));
+    if (!loop)
+        return NULL;
+
+    if( 0 != pico_device_init(loop, "loop", NULL)) {
+        dbg ("Loop init failed.\n");
+        pico_device_destroy(loop);
+        return NULL;
+    }
+
+    loop->send = pico_loop_send;
+    loop->poll = pico_loop_poll;
+    dbg("Device %s created.\n", loop->name);
+    return loop;
+}
+
diff --git a/net/picotcp/modules/pico_dev_loop.h b/net/picotcp/modules/pico_dev_loop.h
new file mode 100644
index 0000000..6cb8de1
--- /dev/null
+++ b/net/picotcp/modules/pico_dev_loop.h
@@ -0,0 +1,15 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+ *********************************************************************/
+#ifndef INCLUDE_PICO_LOOP
+#define INCLUDE_PICO_LOOP
+#include "pico_config.h"
+#include "pico_device.h"
+
+void pico_loop_destroy(struct pico_device *loop);
+struct pico_device *pico_loop_create(void);
+
+#endif
+
diff --git a/net/picotcp/modules/pico_dev_mock.h b/net/picotcp/modules/pico_dev_mock.h
new file mode 100644
index 0000000..dfc2cfc
--- /dev/null
+++ b/net/picotcp/modules/pico_dev_mock.h
@@ -0,0 +1,47 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+ *********************************************************************/
+#ifndef INCLUDE_PICO_MOCK
+#define INCLUDE_PICO_MOCK
+#include "pico_config.h"
+#include "pico_device.h"
+
+
+struct mock_frame {
+    uint8_t*buffer;
+    int len;
+    int read;
+
+    struct mock_frame*next;
+};
+
+struct mock_device {
+    struct pico_device*dev;
+    struct mock_frame*in_head;
+    struct mock_frame*in_tail;
+    struct mock_frame*out_head;
+    struct mock_frame*out_tail;
+
+    uint8_t*mac;
+
+};
+
+struct mock_device;
+/* A mockup-device for the purpose of testing. It provides a couple of extra "network"-functions, which represent the network-side of the device. A network_send will result in mock_poll reading something, a network_read will see if the stack has sent anything through our mock-device. */
+void pico_mock_destroy(struct pico_device *dev);
+struct mock_device *pico_mock_create(uint8_t*mac);
+
+int pico_mock_network_read(struct mock_device*mock, void *buf, int len);
+int pico_mock_network_write(struct mock_device*mock, const void *buf, int len);
+
+/* TODO */
+/* we could use a few checking functions, e.g. one to see if it's a valid IP packet, if it's TCP, if the IP-address matches,... */
+/* That would be useful to avoid having to manually create buffers of what you expect, probably with masks for things that are random,... */
+uint32_t mock_get_sender_ip4(struct mock_device*mock, void*buf, int len);
+
+int mock_ip_protocol(struct mock_device*mock, void*buf, int len);
+int mock_icmp_type(struct mock_device*mock, void*buf, int len);
+int mock_icmp_code(struct mock_device*mock, void*buf, int len);
+#endif
diff --git a/net/picotcp/modules/pico_dev_null.c b/net/picotcp/modules/pico_dev_null.c
new file mode 100644
index 0000000..5fed494
--- /dev/null
+++ b/net/picotcp/modules/pico_dev_null.c
@@ -0,0 +1,60 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   Authors: Daniele Lacamera
+ *********************************************************************/
+
+
+#include "pico_device.h"
+#include "pico_dev_null.h"
+#include "pico_stack.h"
+
+struct pico_device_null {
+    struct pico_device dev;
+    int statistics_frames_out;
+};
+
+#define NULL_MTU 0
+
+static int pico_null_send(struct pico_device *dev, void *buf, int len)
+{
+    struct pico_device_null *null = (struct pico_device_null *) dev;
+    IGNORE_PARAMETER(buf);
+
+    /* Increase the statistic count */
+    null->statistics_frames_out++;
+
+    /* Discard the frame content silently. */
+    return len;
+}
+
+static int pico_null_poll(struct pico_device *dev, int loop_score)
+{
+    /* We never have packet to receive, no score is used. */
+    IGNORE_PARAMETER(dev);
+    return loop_score;
+}
+
+/* Public interface: create/destroy. */
+
+
+struct pico_device *pico_null_create(char *name)
+{
+    struct pico_device_null *null = PICO_ZALLOC(sizeof(struct pico_device_null));
+
+    if (!null)
+        return NULL;
+
+    if( 0 != pico_device_init((struct pico_device *)null, name, NULL)) {
+        return NULL;
+    }
+
+    null->dev.overhead = 0;
+    null->statistics_frames_out = 0;
+    null->dev.send = pico_null_send;
+    null->dev.poll = pico_null_poll;
+    dbg("Device %s created.\n", null->dev.name);
+    return (struct pico_device *)null;
+}
+
diff --git a/net/picotcp/modules/pico_dev_null.h b/net/picotcp/modules/pico_dev_null.h
new file mode 100644
index 0000000..a0eb98e
--- /dev/null
+++ b/net/picotcp/modules/pico_dev_null.h
@@ -0,0 +1,15 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+ *********************************************************************/
+#ifndef INCLUDE_PICO_NULL
+#define INCLUDE_PICO_NULL
+#include "pico_config.h"
+#include "pico_device.h"
+
+void pico_null_destroy(struct pico_device *null);
+struct pico_device *pico_null_create(char *name);
+
+#endif
+
diff --git a/net/picotcp/modules/pico_dhcp_client.c b/net/picotcp/modules/pico_dhcp_client.c
new file mode 100644
index 0000000..7f8df7f
--- /dev/null
+++ b/net/picotcp/modules/pico_dhcp_client.c
@@ -0,0 +1,960 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   Authors: Kristof Roelants, Frederik Van Slycken
+ *********************************************************************/
+
+
+#include "pico_dhcp_client.h"
+#include "pico_stack.h"
+#include "pico_config.h"
+#include "pico_device.h"
+#include "pico_ipv4.h"
+#include "pico_socket.h"
+#include "pico_eth.h"
+
+#if (defined PICO_SUPPORT_DHCPC && defined PICO_SUPPORT_UDP)
+#define dhcpc_dbg(...) do {} while(0)
+/* #define dhcpc_dbg dbg */
+
+/* timer values */
+#define DHCP_CLIENT_REINIT             6000 /* msec */
+#define DHCP_CLIENT_RETRANS            4 /* sec */
+#define DHCP_CLIENT_RETRIES            3
+
+#define DHCP_CLIENT_TIMER_STOPPED      0
+#define DHCP_CLIENT_TIMER_STARTED      1
+
+/* maximum size of a DHCP message */
+#define DHCP_CLIENT_MAXMSGZISE         (PICO_IP_MRU - PICO_SIZE_IP4HDR)
+
+enum dhcp_client_state {
+    DHCP_CLIENT_STATE_INIT_REBOOT = 0,
+    DHCP_CLIENT_STATE_REBOOTING,
+    DHCP_CLIENT_STATE_INIT,
+    DHCP_CLIENT_STATE_SELECTING,
+    DHCP_CLIENT_STATE_REQUESTING,
+    DHCP_CLIENT_STATE_BOUND,
+    DHCP_CLIENT_STATE_RENEWING,
+    DHCP_CLIENT_STATE_REBINDING
+};
+
+
+#define PICO_DHCPC_TIMER_INIT    0
+#define PICO_DHCPC_TIMER_REQUEST 1
+#define PICO_DHCPC_TIMER_RENEW   2
+#define PICO_DHCPC_TIMER_REBIND  3
+#define PICO_DHCPC_TIMER_T1      4
+#define PICO_DHCPC_TIMER_T2      5
+#define PICO_DHCPC_TIMER_LEASE   6
+#define PICO_DHCPC_TIMER_ARRAY_SIZE 7
+
+struct dhcp_client_timer
+{
+    uint8_t state;
+    unsigned int type;
+    uint32_t xid;
+};
+
+struct pico_dhcp_client_cookie
+{
+    uint8_t event;
+    uint8_t retry;
+    uint32_t xid;
+    uint32_t *uid;
+    enum dhcp_client_state state;
+    void (*cb)(void*dhcpc, int code);
+    pico_time init_timestamp;
+    struct pico_socket *s;
+    struct pico_ip4 address;
+    struct pico_ip4 netmask;
+    struct pico_ip4 gateway;
+    struct pico_ip4 nameserver[2];
+    struct pico_ip4 server_id;
+    struct pico_device *dev;
+    struct dhcp_client_timer *timer[PICO_DHCPC_TIMER_ARRAY_SIZE];
+    uint32_t t1_time;
+    uint32_t t2_time;
+    uint32_t lease_time;
+    uint32_t renew_time;
+    uint32_t rebind_time;
+};
+
+static int pico_dhcp_client_init(struct pico_dhcp_client_cookie *dhcpc);
+static int reset(struct pico_dhcp_client_cookie *dhcpc, uint8_t *buf);
+static int8_t pico_dhcp_client_msg(struct pico_dhcp_client_cookie *dhcpc, uint8_t msg_type);
+static void pico_dhcp_client_wakeup(uint16_t ev, struct pico_socket *s);
+static void pico_dhcp_state_machine(uint8_t event, struct pico_dhcp_client_cookie *dhcpc, uint8_t *buf);
+
+static const struct pico_ip4 bcast = {
+    .addr = 0xFFFFFFFF
+};
+
+static const struct pico_ip4 bcast_netmask = {
+    .addr = 0xFFFFFFFF
+};
+
+static struct pico_ip4 inaddr_any = {
+    0
+};
+
+
+static int dhcp_cookies_cmp(void *ka, void *kb)
+{
+    struct pico_dhcp_client_cookie *a = ka, *b = kb;
+    if (a->xid == b->xid)
+        return 0;
+
+    return (a->xid < b->xid) ? (-1) : (1);
+}
+PICO_TREE_DECLARE(DHCPCookies, dhcp_cookies_cmp);
+
+static struct pico_dhcp_client_cookie *pico_dhcp_client_add_cookie(uint32_t xid, struct pico_device *dev, void (*cb)(void *dhcpc, int code), uint32_t *uid)
+{
+    struct pico_dhcp_client_cookie *dhcpc = NULL, *found = NULL, test = {
+        0
+    };
+
+    test.xid = xid;
+    found = pico_tree_findKey(&DHCPCookies, &test);
+    if (found) {
+        pico_err = PICO_ERR_EAGAIN;
+        return NULL;
+    }
+
+    dhcpc = PICO_ZALLOC(sizeof(struct pico_dhcp_client_cookie));
+    if (!dhcpc) {
+        pico_err = PICO_ERR_ENOMEM;
+        return NULL;
+    }
+
+    dhcpc->state = DHCP_CLIENT_STATE_INIT;
+    dhcpc->xid = xid;
+    dhcpc->uid = uid;
+    *(dhcpc->uid) = 0;
+    dhcpc->cb = cb;
+    dhcpc->dev = dev;
+
+    pico_tree_insert(&DHCPCookies, dhcpc);
+    return dhcpc;
+}
+
+static void pico_dhcp_client_stop_timers(struct pico_dhcp_client_cookie *dhcpc);
+static int pico_dhcp_client_del_cookie(uint32_t xid)
+{
+    struct pico_dhcp_client_cookie test = {
+        0
+    }, *found = NULL;
+
+    test.xid = xid;
+    found = pico_tree_findKey(&DHCPCookies, &test);
+    if (!found)
+        return -1;
+
+    pico_dhcp_client_stop_timers(found);
+    pico_socket_close(found->s);
+    found->s = NULL;
+    pico_ipv4_link_del(found->dev, found->address);
+    pico_tree_delete(&DHCPCookies, found);
+    PICO_FREE(found);
+    return 0;
+}
+
+static struct pico_dhcp_client_cookie *pico_dhcp_client_find_cookie(uint32_t xid)
+{
+    struct pico_dhcp_client_cookie test = {
+        0
+    }, *found = NULL;
+
+    test.xid = xid;
+    found = pico_tree_findKey(&DHCPCookies, &test);
+    if (found)
+        return found;
+    else
+        return NULL;
+}
+
+static void pico_dhcp_client_timer_handler(pico_time now, void *arg);
+static void pico_dhcp_client_reinit(pico_time now, void *arg);
+static struct dhcp_client_timer *pico_dhcp_timer_add(uint8_t type, uint32_t time, struct pico_dhcp_client_cookie *ck)
+{
+    struct dhcp_client_timer *t;
+
+    t = PICO_ZALLOC(sizeof(struct dhcp_client_timer));
+    if (!t)
+        return NULL;
+
+    t->state = DHCP_CLIENT_TIMER_STARTED;
+    t->xid = ck->xid;
+    t->type = type;
+    pico_timer_add(time, pico_dhcp_client_timer_handler, t);
+    if (ck->timer[type]) {
+        ck->timer[type]->state = DHCP_CLIENT_TIMER_STOPPED;
+    }
+
+    ck->timer[type] = t;
+    return t;
+}
+
+static int dhcp_get_timer_event(struct pico_dhcp_client_cookie *dhcpc, unsigned int type)
+{
+    const int events[PICO_DHCPC_TIMER_ARRAY_SIZE] =
+    {
+        PICO_DHCP_EVENT_RETRANSMIT,
+        PICO_DHCP_EVENT_RETRANSMIT,
+        PICO_DHCP_EVENT_RETRANSMIT,
+        PICO_DHCP_EVENT_RETRANSMIT,
+        PICO_DHCP_EVENT_T1,
+        PICO_DHCP_EVENT_T2,
+        PICO_DHCP_EVENT_LEASE
+    };
+
+    if (type == PICO_DHCPC_TIMER_REQUEST) {
+        if (++dhcpc->retry > DHCP_CLIENT_RETRIES) {
+            reset(dhcpc, NULL);
+            return PICO_DHCP_EVENT_NONE;
+        }
+    } else if (type < PICO_DHCPC_TIMER_T1) {
+        dhcpc->retry++;
+    }
+
+    return events[type];
+}
+
+static void pico_dhcp_client_timer_handler(pico_time now, void *arg)
+{
+    struct dhcp_client_timer *t = (struct dhcp_client_timer *)arg;
+    struct pico_dhcp_client_cookie *dhcpc;
+
+    if (!t)
+        return;
+
+    (void) now;
+    if (t->state != DHCP_CLIENT_TIMER_STOPPED) {
+        dhcpc = pico_dhcp_client_find_cookie(t->xid);
+        if (dhcpc && dhcpc->timer) {
+            t->state = DHCP_CLIENT_TIMER_STOPPED;
+            if ((t->type == PICO_DHCPC_TIMER_INIT) && (dhcpc->state < DHCP_CLIENT_STATE_SELECTING)) {
+                pico_dhcp_client_reinit(now, dhcpc);
+            } else if (t->type != PICO_DHCPC_TIMER_INIT) {
+                dhcpc->event = (uint8_t)dhcp_get_timer_event(dhcpc, t->type);
+                if (dhcpc->event != PICO_DHCP_EVENT_NONE)
+                    pico_dhcp_state_machine(dhcpc->event, dhcpc, NULL);
+            }
+        }
+    }
+}
+
+static void pico_dhcp_client_timer_stop(struct pico_dhcp_client_cookie *dhcpc, int type)
+{
+    if (dhcpc->timer[type]) {
+        dhcpc->timer[type]->state = DHCP_CLIENT_TIMER_STOPPED;
+    }
+
+}
+
+
+static void pico_dhcp_client_reinit(pico_time now, void *arg)
+{
+    struct pico_dhcp_client_cookie *dhcpc = (struct pico_dhcp_client_cookie *)arg;
+    (void) now;
+
+    if (dhcpc->s) {
+        pico_socket_close(dhcpc->s);
+        dhcpc->s = NULL;
+    }
+
+    if (++dhcpc->retry > DHCP_CLIENT_RETRIES) {
+        pico_err = PICO_ERR_EAGAIN;
+        if (dhcpc->cb)
+            dhcpc->cb(dhcpc, PICO_DHCP_ERROR);
+
+        pico_dhcp_client_del_cookie(dhcpc->xid);
+        return;
+    }
+
+    pico_dhcp_client_init(dhcpc);
+    return;
+}
+
+
+static void pico_dhcp_client_stop_timers(struct pico_dhcp_client_cookie *dhcpc)
+{
+    int i;
+    dhcpc->retry = 0;
+    for (i = 0; i < PICO_DHCPC_TIMER_ARRAY_SIZE; i++)
+        pico_dhcp_client_timer_stop(dhcpc, i);
+}
+
+static void pico_dhcp_client_start_init_timer(struct pico_dhcp_client_cookie *dhcpc)
+{
+    uint32_t time = 0;
+    /* timer value is doubled with every retry (exponential backoff) */
+    time = (uint32_t) (DHCP_CLIENT_RETRANS << dhcpc->retry);
+    pico_dhcp_timer_add(PICO_DHCPC_TIMER_INIT, time * 1000, dhcpc);
+}
+
+static void pico_dhcp_client_start_requesting_timer(struct pico_dhcp_client_cookie *dhcpc)
+{
+    uint32_t time = 0;
+
+    /* timer value is doubled with every retry (exponential backoff) */
+    time = (uint32_t)(DHCP_CLIENT_RETRANS << dhcpc->retry);
+    pico_dhcp_timer_add(PICO_DHCPC_TIMER_REQUEST, time * 1000, dhcpc);
+}
+
+static void pico_dhcp_client_start_renewing_timer(struct pico_dhcp_client_cookie *dhcpc)
+{
+    uint32_t halftime = 0;
+
+    /* wait one-half of the remaining time until T2, down to a minimum of 60 seconds */
+    /* (dhcpc->retry + 1): initial -> divide by 2, 1st retry -> divide by 4, 2nd retry -> divide by 8, etc */
+    pico_dhcp_client_stop_timers(dhcpc);
+    halftime = dhcpc->renew_time >> (dhcpc->retry + 1);
+    if (halftime < 60)
+        halftime = 60;
+
+    pico_dhcp_timer_add(PICO_DHCPC_TIMER_RENEW, halftime * 1000, dhcpc);
+
+    return;
+}
+
+static void pico_dhcp_client_start_rebinding_timer(struct pico_dhcp_client_cookie *dhcpc)
+{
+    uint32_t halftime = 0;
+
+    pico_dhcp_client_stop_timers(dhcpc);
+    halftime = dhcpc->rebind_time >> (dhcpc->retry + 1);
+    if (halftime < 60)
+        halftime = 60;
+
+    pico_dhcp_timer_add(PICO_DHCPC_TIMER_REBIND, halftime * 1000, dhcpc);
+
+    return;
+}
+
+static void pico_dhcp_client_start_reacquisition_timers(struct pico_dhcp_client_cookie *dhcpc)
+{
+
+    pico_dhcp_client_stop_timers(dhcpc);
+    pico_dhcp_timer_add(PICO_DHCPC_TIMER_T1, dhcpc->t1_time * 1000, dhcpc);
+    pico_dhcp_timer_add(PICO_DHCPC_TIMER_T2, dhcpc->t2_time * 1000, dhcpc);
+    pico_dhcp_timer_add(PICO_DHCPC_TIMER_LEASE, dhcpc->lease_time * 1000, dhcpc);
+}
+
+static int pico_dhcp_client_init(struct pico_dhcp_client_cookie *dhcpc)
+{
+    uint16_t port = PICO_DHCP_CLIENT_PORT;
+    if (!dhcpc)
+        return -1;
+
+    /* adding a link with address 0.0.0.0 and netmask 0.0.0.0,
+     * automatically adds a route for a global broadcast */
+    pico_ipv4_link_add(dhcpc->dev, inaddr_any, bcast_netmask);
+    if (!dhcpc->s)
+        dhcpc->s = pico_socket_open(PICO_PROTO_IPV4, PICO_PROTO_UDP, &pico_dhcp_client_wakeup);
+
+    if (!dhcpc->s) {
+        pico_dhcp_timer_add(PICO_DHCPC_TIMER_INIT, DHCP_CLIENT_REINIT, dhcpc);
+        return 0;
+    }
+
+    dhcpc->s->dev = dhcpc->dev;
+    if (pico_socket_bind(dhcpc->s, &inaddr_any, &port) < 0) {
+        pico_socket_close(dhcpc->s);
+        dhcpc->s = NULL;
+        pico_dhcp_timer_add(PICO_DHCPC_TIMER_INIT, DHCP_CLIENT_REINIT, dhcpc);
+        return 0;
+    }
+
+    if (pico_dhcp_client_msg(dhcpc, PICO_DHCP_MSG_DISCOVER) < 0) {
+        pico_socket_close(dhcpc->s);
+        dhcpc->s = NULL;
+        pico_dhcp_timer_add(PICO_DHCPC_TIMER_INIT, DHCP_CLIENT_REINIT, dhcpc);
+        return 0;
+    }
+
+    dhcpc->retry = 0;
+    dhcpc->init_timestamp = PICO_TIME_MS();
+    pico_dhcp_client_start_init_timer(dhcpc);
+    return 0;
+}
+
+int pico_dhcp_initiate_negotiation(struct pico_device *dev, void (*cb)(void *dhcpc, int code), uint32_t *uid)
+{
+    uint8_t retry = 32;
+    uint32_t xid = 0;
+    struct pico_dhcp_client_cookie *dhcpc = NULL;
+
+    if (!dev || !cb || !uid) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+    if (!dev->eth) {
+        pico_err = PICO_ERR_EOPNOTSUPP;
+        return -1;
+    }
+
+    /* attempt to generate a correct xid, else fail */
+    do {
+        xid = pico_rand();
+    } while (!xid && --retry);
+
+    if (!xid) {
+        pico_err = PICO_ERR_EAGAIN;
+        return -1;
+    }
+
+    dhcpc = pico_dhcp_client_add_cookie(xid, dev, cb, uid);
+    if (!dhcpc)
+        return -1;
+
+    dhcpc_dbg("DHCP client: cookie with xid %u\n", dhcpc->xid);
+    *uid = xid;
+    return pico_dhcp_client_init(dhcpc);
+}
+
+static void pico_dhcp_client_recv_params(struct pico_dhcp_client_cookie *dhcpc, struct pico_dhcp_opt *opt)
+{
+    do {
+        switch (opt->code)
+        {
+        case PICO_DHCP_OPT_PAD:
+            break;
+
+        case PICO_DHCP_OPT_END:
+            break;
+
+        case PICO_DHCP_OPT_MSGTYPE:
+            dhcpc->event = opt->ext.msg_type.type;
+            dhcpc_dbg("DHCP client: message type %u\n", dhcpc->event);
+            break;
+
+        case PICO_DHCP_OPT_LEASETIME:
+            dhcpc->lease_time = long_be(opt->ext.lease_time.time);
+            dhcpc_dbg("DHCP client: lease time %u\n", dhcpc->lease_time);
+            break;
+
+        case PICO_DHCP_OPT_RENEWALTIME:
+            dhcpc->t1_time = long_be(opt->ext.renewal_time.time);
+            dhcpc_dbg("DHCP client: renewal time %u\n", dhcpc->t1_time);
+            break;
+
+        case PICO_DHCP_OPT_REBINDINGTIME:
+            dhcpc->t2_time = long_be(opt->ext.rebinding_time.time);
+            dhcpc_dbg("DHCP client: rebinding time %u\n", dhcpc->t2_time);
+            break;
+
+        case PICO_DHCP_OPT_ROUTER:
+            dhcpc->gateway = opt->ext.router.ip;
+            dhcpc_dbg("DHCP client: router %08X\n", dhcpc->gateway.addr);
+            break;
+
+        case PICO_DHCP_OPT_DNS:
+            dhcpc->nameserver[0] = opt->ext.dns1.ip;
+            dhcpc_dbg("DHCP client: dns1 %08X\n", dhcpc->nameserver[0].addr);
+            if (opt->len >= 8) {
+                dhcpc->nameserver[1] = opt->ext.dns2.ip;
+                dhcpc_dbg("DHCP client: dns1 %08X\n", dhcpc->nameserver[1].addr);
+            }
+
+            break;
+
+        case PICO_DHCP_OPT_NETMASK:
+            dhcpc->netmask = opt->ext.netmask.ip;
+            dhcpc_dbg("DHCP client: netmask %08X\n", dhcpc->netmask.addr);
+            break;
+
+        case PICO_DHCP_OPT_SERVERID:
+            dhcpc->server_id = opt->ext.server_id.ip;
+            dhcpc_dbg("DHCP client: server ID %08X\n", dhcpc->server_id.addr);
+            break;
+
+        case PICO_DHCP_OPT_OPTOVERLOAD:
+            dhcpc_dbg("DHCP client: WARNING option overload present (not processed)");
+            break;
+
+        default:
+            dhcpc_dbg("DHCP client: WARNING unsupported option %u\n", opt->code);
+            break;
+        }
+    } while (pico_dhcp_next_option(&opt));
+
+    /* default values for T1 and T2 when not provided */
+    if (!dhcpc->t1_time)
+        dhcpc->t1_time = dhcpc->lease_time >> 1;
+
+    if (!dhcpc->t2_time)
+        dhcpc->t2_time = (dhcpc->lease_time * 875) / 1000;
+
+    return;
+}
+
+static int recv_offer(struct pico_dhcp_client_cookie *dhcpc, uint8_t *buf)
+{
+    struct pico_dhcp_hdr *hdr = (struct pico_dhcp_hdr *)buf;
+    struct pico_dhcp_opt *opt = (struct pico_dhcp_opt *)hdr->options;
+
+    pico_dhcp_client_recv_params(dhcpc, opt);
+    if ((dhcpc->event != PICO_DHCP_MSG_OFFER) || !dhcpc->server_id.addr || !dhcpc->netmask.addr || !dhcpc->lease_time)
+        return -1;
+
+    dhcpc->address.addr = hdr->yiaddr;
+
+    /* we skip state SELECTING, process first offer received */
+    dhcpc->state = DHCP_CLIENT_STATE_REQUESTING;
+    dhcpc->retry = 0;
+    pico_dhcp_client_msg(dhcpc, PICO_DHCP_MSG_REQUEST);
+    pico_dhcp_client_start_requesting_timer(dhcpc);
+    return 0;
+}
+
+static int recv_ack(struct pico_dhcp_client_cookie *dhcpc, uint8_t *buf)
+{
+    struct pico_dhcp_hdr *hdr = (struct pico_dhcp_hdr *)buf;
+    struct pico_dhcp_opt *opt = (struct pico_dhcp_opt *)hdr->options;
+    struct pico_ip4 address = {
+        0
+    };
+    struct pico_ip4 any_address = {
+        0
+    };
+
+    struct pico_ipv4_link *l;
+
+    pico_dhcp_client_recv_params(dhcpc, opt);
+    if ((dhcpc->event != PICO_DHCP_MSG_ACK) || !dhcpc->server_id.addr || !dhcpc->netmask.addr || !dhcpc->lease_time)
+        return -1;
+
+    /* Issue #20 the server can transmit on ACK a different IP than the one in OFFER */
+    /* RFC2131 ch 4.3.2 ... The client SHOULD use the parameters in the DHCPACK message for configuration */
+    if (dhcpc->state == DHCP_CLIENT_STATE_REQUESTING)
+        dhcpc->address.addr = hdr->yiaddr;
+
+
+    /* close the socket used for address (re)acquisition */
+    pico_socket_close(dhcpc->s);
+    dhcpc->s = NULL;
+
+    /* Delete all the links before adding the address */
+    pico_ipv4_link_del(dhcpc->dev, address);
+    l = pico_ipv4_link_by_dev(dhcpc->dev);
+    while(l) {
+        pico_ipv4_link_del(dhcpc->dev, l->address);
+        l = pico_ipv4_link_by_dev_next(dhcpc->dev, l);
+    }
+    pico_ipv4_link_add(dhcpc->dev, dhcpc->address, dhcpc->netmask);
+
+    dbg("DHCP client: renewal time (T1) %u\n", (unsigned int)dhcpc->t1_time);
+    dbg("DHCP client: rebinding time (T2) %u\n", (unsigned int)dhcpc->t2_time);
+    dbg("DHCP client: lease time %u\n", (unsigned int)dhcpc->lease_time);
+
+    /* If router option is received, use it as default gateway */
+    if (dhcpc->gateway.addr != 0U) {
+        pico_ipv4_route_add(any_address, any_address, dhcpc->gateway, 1, NULL);
+    }
+
+    dhcpc->retry = 0;
+    dhcpc->renew_time = dhcpc->t2_time - dhcpc->t1_time;
+    dhcpc->rebind_time = dhcpc->lease_time - dhcpc->t2_time;
+    pico_dhcp_client_start_reacquisition_timers(dhcpc);
+
+    *(dhcpc->uid) = dhcpc->xid;
+    if (dhcpc->cb)
+        dhcpc->cb(dhcpc, PICO_DHCP_SUCCESS);
+
+    dhcpc->state = DHCP_CLIENT_STATE_BOUND;
+    return 0;
+}
+
+static int renew(struct pico_dhcp_client_cookie *dhcpc, uint8_t *buf)
+{
+    uint16_t port = PICO_DHCP_CLIENT_PORT;
+    (void) buf;
+    dhcpc->state = DHCP_CLIENT_STATE_RENEWING;
+    dhcpc->s = pico_socket_open(PICO_PROTO_IPV4, PICO_PROTO_UDP, &pico_dhcp_client_wakeup);
+    if (!dhcpc->s) {
+        dhcpc_dbg("DHCP client ERROR: failure opening socket on renew, aborting DHCP! (%s)\n", strerror(pico_err));
+        if (dhcpc->cb)
+            dhcpc->cb(dhcpc, PICO_DHCP_ERROR);
+
+        return -1;
+    }
+
+    if (pico_socket_bind(dhcpc->s, &dhcpc->address, &port) != 0) {
+        dhcpc_dbg("DHCP client ERROR: failure binding socket on renew, aborting DHCP! (%s)\n", strerror(pico_err));
+        pico_socket_close(dhcpc->s);
+        dhcpc->s = NULL;
+        if (dhcpc->cb)
+            dhcpc->cb(dhcpc, PICO_DHCP_ERROR);
+
+        return -1;
+    }
+
+    dhcpc->retry = 0;
+    pico_dhcp_client_msg(dhcpc, PICO_DHCP_MSG_REQUEST);
+    pico_dhcp_client_start_renewing_timer(dhcpc);
+
+    return 0;
+}
+
+static int rebind(struct pico_dhcp_client_cookie *dhcpc, uint8_t *buf)
+{
+    (void) buf;
+
+    dhcpc->state = DHCP_CLIENT_STATE_REBINDING;
+    dhcpc->retry = 0;
+    pico_dhcp_client_msg(dhcpc, PICO_DHCP_MSG_REQUEST);
+    pico_dhcp_client_start_rebinding_timer(dhcpc);
+
+    return 0;
+}
+
+static int reset(struct pico_dhcp_client_cookie *dhcpc, uint8_t *buf)
+{
+    struct pico_ip4 address = {
+        0
+    };
+    (void) buf;
+
+    if (dhcpc->state == DHCP_CLIENT_STATE_REQUESTING)
+        address.addr = PICO_IP4_ANY;
+    else
+        address.addr = dhcpc->address.addr;
+
+    /* close the socket used for address (re)acquisition */
+    pico_socket_close(dhcpc->s);
+    dhcpc->s = NULL;
+    /* delete the link with the currently in use address */
+    pico_ipv4_link_del(dhcpc->dev, address);
+
+    if (dhcpc->cb)
+        dhcpc->cb(dhcpc, PICO_DHCP_RESET);
+
+    if (dhcpc->state < DHCP_CLIENT_STATE_BOUND)
+    {
+        /* pico_dhcp_client_timer_stop(dhcpc, PICO_DHCPC_TIMER_INIT); */
+    }
+
+
+    dhcpc->state = DHCP_CLIENT_STATE_INIT;
+    pico_dhcp_client_stop_timers(dhcpc);
+    pico_dhcp_client_init(dhcpc);
+    return 0;
+}
+
+static int retransmit(struct pico_dhcp_client_cookie *dhcpc, uint8_t *buf)
+{
+    (void) buf;
+    switch (dhcpc->state)
+    {
+    case DHCP_CLIENT_STATE_INIT:
+        pico_dhcp_client_msg(dhcpc, PICO_DHCP_MSG_DISCOVER);
+        pico_dhcp_client_start_init_timer(dhcpc);
+        break;
+
+    case DHCP_CLIENT_STATE_REQUESTING:
+        pico_dhcp_client_msg(dhcpc, PICO_DHCP_MSG_REQUEST);
+        pico_dhcp_client_start_requesting_timer(dhcpc);
+        break;
+
+    case DHCP_CLIENT_STATE_RENEWING:
+        pico_dhcp_client_msg(dhcpc, PICO_DHCP_MSG_REQUEST);
+        pico_dhcp_client_start_renewing_timer(dhcpc);
+        break;
+
+    case DHCP_CLIENT_STATE_REBINDING:
+        pico_dhcp_client_msg(dhcpc, PICO_DHCP_MSG_DISCOVER);
+        pico_dhcp_client_start_rebinding_timer(dhcpc);
+        break;
+
+    default:
+        dhcpc_dbg("DHCP client WARNING: retransmit in incorrect state (%u)!\n", dhcpc->state);
+        return -1;
+    }
+    return 0;
+}
+
+struct dhcp_action_entry {
+    int (*offer)(struct pico_dhcp_client_cookie *dhcpc, uint8_t *buf);
+    int (*ack)(struct pico_dhcp_client_cookie *dhcpc, uint8_t *buf);
+    int (*nak)(struct pico_dhcp_client_cookie *dhcpc, uint8_t *buf);
+    int (*timer1)(struct pico_dhcp_client_cookie *dhcpc, uint8_t *buf);
+    int (*timer2)(struct pico_dhcp_client_cookie *dhcpc, uint8_t *buf);
+    int (*timer_lease)(struct pico_dhcp_client_cookie *dhcpc, uint8_t *buf);
+    int (*timer_retransmit)(struct pico_dhcp_client_cookie *dhcpc, uint8_t *buf);
+};
+
+static struct dhcp_action_entry dhcp_fsm[] =
+{ /* event                |offer      |ack      |nak    |T1    |T2     |lease  |retransmit */
+/* state init-reboot */
+    { NULL,       NULL,     NULL,   NULL,  NULL,   NULL,  NULL       },
+/* state rebooting   */ { NULL,       NULL,     NULL,   NULL,  NULL,   NULL,  NULL       },
+/* state init        */ { recv_offer, NULL,     NULL,   NULL,  NULL,   NULL,  retransmit },
+/* state selecting   */ { NULL,       NULL,     NULL,   NULL,  NULL,   NULL,  NULL       },
+/* state requesting  */ { NULL,       recv_ack, reset,  NULL,  NULL,   NULL,  retransmit },
+/* state bound       */ { NULL,       NULL,     NULL,   renew, NULL,   NULL,  NULL       },
+/* state renewing    */ { NULL,       recv_ack, reset,  NULL,  rebind, NULL,  retransmit },
+/* state rebinding   */ { NULL,       recv_ack, reset,  NULL,  NULL,   reset, retransmit },
+};
+
+/* TIMERS REMARK:
+ * In state bound we have T1, T2 and the lease timer running. If T1 goes off, we attempt to renew.
+ * If the renew succeeds a new T1, T2 and lease timer is started. The former T2 and lease timer is
+ * still running though. This poses no concerns as the T2 and lease event in state bound have a NULL
+ * pointer in the fsm. If the former T2 or lease timer goes off, nothing happens. Same situation
+ * applies for T2 and a succesfull rebind. */
+
+static void pico_dhcp_state_machine(uint8_t event, struct pico_dhcp_client_cookie *dhcpc, uint8_t *buf)
+{
+    switch (event)
+    {
+    case PICO_DHCP_MSG_OFFER:
+        dhcpc_dbg("DHCP client: received OFFER\n");
+        if (dhcp_fsm[dhcpc->state].offer)
+            dhcp_fsm[dhcpc->state].offer(dhcpc, buf);
+
+        break;
+
+    case PICO_DHCP_MSG_ACK:
+        dhcpc_dbg("DHCP client: received ACK\n");
+        if (dhcp_fsm[dhcpc->state].ack)
+            dhcp_fsm[dhcpc->state].ack(dhcpc, buf);
+
+        break;
+
+    case PICO_DHCP_MSG_NAK:
+        dhcpc_dbg("DHCP client: received NAK\n");
+        if (dhcp_fsm[dhcpc->state].nak)
+            dhcp_fsm[dhcpc->state].nak(dhcpc, buf);
+
+        break;
+
+    case PICO_DHCP_EVENT_T1:
+        dhcpc_dbg("DHCP client: received T1 timeout\n");
+        if (dhcp_fsm[dhcpc->state].timer1)
+            dhcp_fsm[dhcpc->state].timer1(dhcpc, NULL);
+
+        break;
+
+    case PICO_DHCP_EVENT_T2:
+        dhcpc_dbg("DHCP client: received T2 timeout\n");
+        if (dhcp_fsm[dhcpc->state].timer2)
+            dhcp_fsm[dhcpc->state].timer2(dhcpc, NULL);
+
+        break;
+
+    case PICO_DHCP_EVENT_LEASE:
+        dhcpc_dbg("DHCP client: received LEASE timeout\n");
+        if (dhcp_fsm[dhcpc->state].timer_lease)
+            dhcp_fsm[dhcpc->state].timer_lease(dhcpc, NULL);
+
+        break;
+
+    case PICO_DHCP_EVENT_RETRANSMIT:
+        dhcpc_dbg("DHCP client: received RETRANSMIT timeout\n");
+        if (dhcp_fsm[dhcpc->state].timer_retransmit)
+            dhcp_fsm[dhcpc->state].timer_retransmit(dhcpc, NULL);
+
+        break;
+
+    default:
+        dhcpc_dbg("DHCP client WARNING: unrecognized event (%u)!\n", dhcpc->event);
+        return;
+    }
+    return;
+}
+
+static int16_t pico_dhcp_client_opt_parse(void *ptr, uint16_t len)
+{
+    uint32_t optlen = len - (uint32_t)sizeof(struct pico_dhcp_hdr);
+    struct pico_dhcp_hdr *hdr = (struct pico_dhcp_hdr *)ptr;
+    struct pico_dhcp_opt *opt = NULL;
+
+    if (hdr->dhcp_magic != PICO_DHCPD_MAGIC_COOKIE)
+        return -1;
+
+    if (!pico_dhcp_are_options_valid(hdr->options, (int32_t)optlen))
+        return -1;
+
+    opt = (struct pico_dhcp_opt *)hdr->options;
+    do {
+        if (opt->code == PICO_DHCP_OPT_MSGTYPE)
+            return opt->ext.msg_type.type;
+    } while (pico_dhcp_next_option(&opt));
+
+    return -1;
+}
+
+static int8_t pico_dhcp_client_msg(struct pico_dhcp_client_cookie *dhcpc, uint8_t msg_type)
+{
+    int32_t r = 0;
+    uint16_t optlen = 0, offset = 0;
+    struct pico_ip4 destination = {
+        .addr = 0xFFFFFFFF
+    };
+    struct pico_dhcp_hdr *hdr = NULL;
+
+
+    /* RFC 2131 3.1.3: Request is always BROADCAST */
+
+    /* Set again default route for the bcast request */
+    pico_ipv4_route_set_bcast_link(pico_ipv4_link_by_dev(dhcpc->dev));
+
+    switch (msg_type)
+    {
+    case PICO_DHCP_MSG_DISCOVER:
+        dhcpc_dbg("DHCP client: sent DHCPDISCOVER\n");
+        optlen = PICO_DHCP_OPTLEN_MSGTYPE + PICO_DHCP_OPTLEN_MAXMSGSIZE + PICO_DHCP_OPTLEN_PARAMLIST + PICO_DHCP_OPTLEN_END;
+        hdr = PICO_ZALLOC((size_t)(sizeof(struct pico_dhcp_hdr) + optlen));
+        if (!hdr) {
+            pico_err = PICO_ERR_ENOMEM;
+            return -1;
+        }
+
+        /* specific options */
+        offset = (uint16_t)(offset + pico_dhcp_opt_maxmsgsize(&hdr->options[offset], DHCP_CLIENT_MAXMSGZISE));
+        break;
+
+    case PICO_DHCP_MSG_REQUEST:
+        optlen = PICO_DHCP_OPTLEN_MSGTYPE + PICO_DHCP_OPTLEN_MAXMSGSIZE + PICO_DHCP_OPTLEN_PARAMLIST + PICO_DHCP_OPTLEN_REQIP + PICO_DHCP_OPTLEN_SERVERID
+                 + PICO_DHCP_OPTLEN_END;
+        hdr = PICO_ZALLOC(sizeof(struct pico_dhcp_hdr) + optlen);
+        if (!hdr) {
+            pico_err = PICO_ERR_ENOMEM;
+            return -1;
+        }
+
+        /* specific options */
+        offset = (uint16_t)(offset + pico_dhcp_opt_maxmsgsize(&hdr->options[offset], DHCP_CLIENT_MAXMSGZISE));
+        if (dhcpc->state == DHCP_CLIENT_STATE_REQUESTING) {
+            offset = (uint16_t)(offset + pico_dhcp_opt_reqip(&hdr->options[offset], &dhcpc->address));
+            offset = (uint16_t)(offset + pico_dhcp_opt_serverid(&hdr->options[offset], &dhcpc->server_id));
+        }
+
+        break;
+
+    default:
+        return -1;
+    }
+
+    /* common options */
+    offset = (uint16_t)(offset + pico_dhcp_opt_msgtype(&hdr->options[offset], msg_type));
+    offset = (uint16_t)(offset + pico_dhcp_opt_paramlist(&hdr->options[offset]));
+    offset = (uint16_t)(offset + pico_dhcp_opt_end(&hdr->options[offset]));
+
+    switch (dhcpc->state)
+    {
+    case DHCP_CLIENT_STATE_BOUND:
+        destination.addr = dhcpc->server_id.addr;
+        hdr->ciaddr = dhcpc->address.addr;
+        break;
+
+    case DHCP_CLIENT_STATE_RENEWING:
+        destination.addr = dhcpc->server_id.addr;
+        hdr->ciaddr = dhcpc->address.addr;
+        break;
+
+    case DHCP_CLIENT_STATE_REBINDING:
+        hdr->ciaddr = dhcpc->address.addr;
+        break;
+
+    default:
+        /* do nothing */
+        break;
+    }
+
+    /* header information */
+    hdr->op = PICO_DHCP_OP_REQUEST;
+    hdr->htype = PICO_DHCP_HTYPE_ETH;
+    hdr->hlen = PICO_SIZE_ETH;
+    hdr->xid = dhcpc->xid;
+    /* hdr->flags = short_be(PICO_DHCP_FLAG_BROADCAST); / * Nope: see bug #96! * / */
+    hdr->dhcp_magic = PICO_DHCPD_MAGIC_COOKIE;
+    /* copy client hardware address */
+    memcpy(hdr->hwaddr, &dhcpc->dev->eth->mac, PICO_SIZE_ETH);
+
+    if (destination.addr == PICO_IP4_BCAST)
+        pico_ipv4_route_set_bcast_link(pico_ipv4_link_get(&dhcpc->address));
+
+    r = pico_socket_sendto(dhcpc->s, hdr, (int)(sizeof(struct pico_dhcp_hdr) + optlen), &destination, PICO_DHCPD_PORT);
+    PICO_FREE(hdr);
+    if (r < 0)
+        return -1;
+
+    return 0;
+}
+
+static void pico_dhcp_client_wakeup(uint16_t ev, struct pico_socket *s)
+{
+
+    uint8_t *buf;
+    int r = 0;
+    struct pico_dhcp_hdr *hdr = NULL;
+    struct pico_dhcp_client_cookie *dhcpc = NULL;
+
+    if ((ev & PICO_SOCK_EV_RD) == 0)
+        return;
+
+    buf = PICO_ZALLOC(DHCP_CLIENT_MAXMSGZISE);
+    if (!buf) {
+        return;
+    }
+
+    r = pico_socket_recvfrom(s, buf, DHCP_CLIENT_MAXMSGZISE, NULL, NULL);
+    if (r < 0)
+        goto out_discard_buf;
+
+    /* If the 'xid' of an arriving message does not match the 'xid'
+     * of the most recent transmitted message, the message must be
+     * silently discarded. */
+    hdr = (struct pico_dhcp_hdr *)buf;
+    dhcpc = pico_dhcp_client_find_cookie(hdr->xid);
+    if (!dhcpc)
+        goto out_discard_buf;
+
+    dhcpc->event = (uint8_t)pico_dhcp_client_opt_parse(buf, (uint16_t)r);
+    pico_dhcp_state_machine(dhcpc->event, dhcpc, buf);
+
+out_discard_buf:
+    PICO_FREE(buf);
+}
+
+void *pico_dhcp_get_identifier(uint32_t xid)
+{
+    return (void *)pico_dhcp_client_find_cookie(xid);
+}
+
+struct pico_ip4 pico_dhcp_get_address(void*dhcpc)
+{
+    return ((struct pico_dhcp_client_cookie*)dhcpc)->address;
+}
+
+struct pico_ip4 pico_dhcp_get_gateway(void*dhcpc)
+{
+    return ((struct pico_dhcp_client_cookie*)dhcpc)->gateway;
+}
+
+struct pico_ip4 pico_dhcp_get_netmask(void *dhcpc)
+{
+    return ((struct pico_dhcp_client_cookie*)dhcpc)->netmask;
+}
+
+struct pico_ip4 pico_dhcp_get_nameserver(void*dhcpc, int index)
+{
+    struct pico_ip4 fault = {
+        .addr = 0xFFFFFFFFU
+    };
+    if ((index != 0) && (index != 1))
+        return fault;
+
+    return ((struct pico_dhcp_client_cookie*)dhcpc)->nameserver[index];
+}
+
+int pico_dhcp_client_abort(uint32_t xid)
+{
+    return pico_dhcp_client_del_cookie(xid);
+}
+#endif
diff --git a/net/picotcp/modules/pico_dhcp_client.h b/net/picotcp/modules/pico_dhcp_client.h
new file mode 100644
index 0000000..2b5bbf9
--- /dev/null
+++ b/net/picotcp/modules/pico_dhcp_client.h
@@ -0,0 +1,30 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   .
+
+ *********************************************************************/
+#ifndef INCLUDE_PICO_DHCP_CLIENT
+#define INCLUDE_PICO_DHCP_CLIENT
+#include "pico_defines.h"
+#ifdef PICO_SUPPORT_UDP
+#include "pico_dhcp_common.h"
+#include "pico_addressing.h"
+#include "pico_protocol.h"
+
+int pico_dhcp_initiate_negotiation(struct pico_device *device, void (*callback)(void*cli, int code), uint32_t *xid);
+void *pico_dhcp_get_identifier(uint32_t xid);
+struct pico_ip4 pico_dhcp_get_address(void *cli);
+struct pico_ip4 pico_dhcp_get_gateway(void *cli);
+struct pico_ip4 pico_dhcp_get_netmask(void *cli);
+struct pico_ip4 pico_dhcp_get_nameserver(void*cli, int index);
+int pico_dhcp_client_abort(uint32_t xid);
+
+/* possible codes for the callback */
+#define PICO_DHCP_SUCCESS 0
+#define PICO_DHCP_ERROR   1
+#define PICO_DHCP_RESET   2
+
+#endif
+#endif
diff --git a/net/picotcp/modules/pico_dhcp_common.c b/net/picotcp/modules/pico_dhcp_common.c
new file mode 100644
index 0000000..99701ba
--- /dev/null
+++ b/net/picotcp/modules/pico_dhcp_common.c
@@ -0,0 +1,189 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   .
+
+   Authors: Frederik Van Slycken
+ *********************************************************************/
+
+#include "pico_config.h"
+#include "pico_stack.h"
+#include "pico_dhcp_common.h"
+
+#if defined (PICO_SUPPORT_DHCPC) || defined (PICO_SUPPORT_DHCPD)
+/* pico_dhcp_are_options_valid needs to be called first to prevent illegal memory access */
+/* The argument pointer is moved forward to the next option */
+struct pico_dhcp_opt *pico_dhcp_next_option(struct pico_dhcp_opt **ptr)
+{
+    uint8_t **p = (uint8_t **)ptr;
+    struct pico_dhcp_opt *opt = *ptr;
+
+    if (opt->code == PICO_DHCP_OPT_END)
+        return NULL;
+
+    if (opt->code == PICO_DHCP_OPT_PAD) {
+        *p += 1;
+        return *ptr;
+    }
+
+    *p += (opt->len + 2); /* (len + 2) to account for code and len octet */
+    return *ptr;
+}
+
+uint8_t pico_dhcp_are_options_valid(void *ptr, int32_t len)
+{
+    uint8_t optlen = 0, *p = ptr;
+
+    while (len > 0) {
+        switch (*p)
+        {
+        case PICO_DHCP_OPT_END:
+            return 1;
+
+        case PICO_DHCP_OPT_PAD:
+            p++;
+            len--;
+            break;
+
+        default:
+            p++; /* move pointer from code octet to len octet */
+            len--;
+            if ((len <= 0) || (len - (*p + 1) < 0)) /* (*p + 1) to account for len octet */
+                return 0;
+
+            optlen = *p;
+            p += optlen + 1;
+            len -= optlen;
+            break;
+        }
+    }
+    return 0;
+}
+
+uint8_t pico_dhcp_opt_netmask(void *ptr, struct pico_ip4 *ip)
+{
+    struct pico_dhcp_opt *opt = (struct pico_dhcp_opt *)ptr;
+
+    /* option: netmask */
+    opt->code = PICO_DHCP_OPT_NETMASK;
+    opt->len = PICO_DHCP_OPTLEN_NETMASK - PICO_DHCP_OPTLEN_HDR;
+    opt->ext.netmask.ip = *ip;
+    return PICO_DHCP_OPTLEN_NETMASK;
+}
+
+uint8_t pico_dhcp_opt_router(void *ptr, struct pico_ip4 *ip)
+{
+    struct pico_dhcp_opt *opt = (struct pico_dhcp_opt *)ptr;
+
+    /* option: router */
+    opt->code = PICO_DHCP_OPT_ROUTER;
+    opt->len = PICO_DHCP_OPTLEN_ROUTER - PICO_DHCP_OPTLEN_HDR;
+    opt->ext.router.ip = *ip;
+    return PICO_DHCP_OPTLEN_ROUTER;
+}
+
+uint8_t pico_dhcp_opt_dns(void *ptr, struct pico_ip4 *ip)
+{
+    struct pico_dhcp_opt *opt = (struct pico_dhcp_opt *)ptr;
+
+    /* option: dns */
+    opt->code = PICO_DHCP_OPT_DNS;
+    opt->len = PICO_DHCP_OPTLEN_DNS - PICO_DHCP_OPTLEN_HDR;
+    opt->ext.dns1.ip = *ip;
+    return PICO_DHCP_OPTLEN_DNS;
+}
+
+uint8_t pico_dhcp_opt_broadcast(void *ptr, struct pico_ip4 *ip)
+{
+    struct pico_dhcp_opt *opt = (struct pico_dhcp_opt *)ptr;
+
+    /* option: broadcast */
+    opt->code = PICO_DHCP_OPT_BROADCAST;
+    opt->len = PICO_DHCP_OPTLEN_BROADCAST - PICO_DHCP_OPTLEN_HDR;
+    opt->ext.broadcast.ip = *ip;
+    return PICO_DHCP_OPTLEN_BROADCAST;
+}
+
+uint8_t pico_dhcp_opt_reqip(void *ptr, struct pico_ip4 *ip)
+{
+    struct pico_dhcp_opt *opt = (struct pico_dhcp_opt *)ptr;
+
+    /* option: request IP address */
+    opt->code = PICO_DHCP_OPT_REQIP;
+    opt->len = PICO_DHCP_OPTLEN_REQIP - PICO_DHCP_OPTLEN_HDR;
+    opt->ext.req_ip.ip = *ip;
+    return PICO_DHCP_OPTLEN_REQIP;
+}
+
+uint8_t pico_dhcp_opt_leasetime(void *ptr, uint32_t time)
+{
+    struct pico_dhcp_opt *opt = (struct pico_dhcp_opt *)ptr;
+
+    /* option: lease time */
+    opt->code = PICO_DHCP_OPT_LEASETIME;
+    opt->len = PICO_DHCP_OPTLEN_LEASETIME - PICO_DHCP_OPTLEN_HDR;
+    opt->ext.lease_time.time = time;
+    return PICO_DHCP_OPTLEN_LEASETIME;
+}
+
+uint8_t pico_dhcp_opt_msgtype(void *ptr, uint8_t type)
+{
+    struct pico_dhcp_opt *opt = (struct pico_dhcp_opt *)ptr;
+
+    /* option: message type */
+    opt->code = PICO_DHCP_OPT_MSGTYPE;
+    opt->len = PICO_DHCP_OPTLEN_MSGTYPE - PICO_DHCP_OPTLEN_HDR;
+    opt->ext.msg_type.type = type;
+    return PICO_DHCP_OPTLEN_MSGTYPE;
+}
+
+uint8_t pico_dhcp_opt_serverid(void *ptr, struct pico_ip4 *ip)
+{
+    struct pico_dhcp_opt *opt = (struct pico_dhcp_opt *)ptr;
+
+    /* option: server identifier */
+    opt->code = PICO_DHCP_OPT_SERVERID;
+    opt->len = PICO_DHCP_OPTLEN_SERVERID - PICO_DHCP_OPTLEN_HDR;
+    opt->ext.server_id.ip = *ip;
+    return PICO_DHCP_OPTLEN_SERVERID;
+}
+
+uint8_t pico_dhcp_opt_paramlist(void *ptr)
+{
+    struct pico_dhcp_opt *opt = (struct pico_dhcp_opt *)ptr;
+
+    /* option: parameter list */
+    opt->code = PICO_DHCP_OPT_PARAMLIST;
+    opt->len = PICO_DHCP_OPTLEN_PARAMLIST - PICO_DHCP_OPTLEN_HDR;
+    opt->ext.param_list.code[0] = PICO_DHCP_OPT_NETMASK;
+    opt->ext.param_list.code[1] = PICO_DHCP_OPT_TIME;
+    opt->ext.param_list.code[2] = PICO_DHCP_OPT_ROUTER;
+    opt->ext.param_list.code[3] = PICO_DHCP_OPT_HOSTNAME;
+    opt->ext.param_list.code[4] = PICO_DHCP_OPT_RENEWALTIME;
+    opt->ext.param_list.code[5] = PICO_DHCP_OPT_REBINDINGTIME;
+    opt->ext.param_list.code[6] = PICO_DHCP_OPT_DNS;
+    return PICO_DHCP_OPTLEN_PARAMLIST;
+}
+
+uint8_t pico_dhcp_opt_maxmsgsize(void *ptr, uint16_t size)
+{
+    struct pico_dhcp_opt *opt = (struct pico_dhcp_opt *)ptr;
+
+    /* option: maximum message size */
+    opt->code = PICO_DHCP_OPT_MAXMSGSIZE;
+    opt->len = PICO_DHCP_OPTLEN_MAXMSGSIZE - PICO_DHCP_OPTLEN_HDR;
+    opt->ext.max_msg_size.size = short_be(size);
+    return PICO_DHCP_OPTLEN_MAXMSGSIZE;
+}
+
+uint8_t pico_dhcp_opt_end(void *ptr)
+{
+    uint8_t *opt = (uint8_t *)ptr;
+
+    /* option: end of options */
+    *opt = PICO_DHCP_OPT_END;
+    return PICO_DHCP_OPTLEN_END;
+}
+
+#endif
diff --git a/net/picotcp/modules/pico_dhcp_common.h b/net/picotcp/modules/pico_dhcp_common.h
new file mode 100644
index 0000000..cdf1bd1
--- /dev/null
+++ b/net/picotcp/modules/pico_dhcp_common.h
@@ -0,0 +1,186 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   .
+
+ *********************************************************************/
+#ifndef INCLUDE_PICO_DHCP_COMMON
+#define INCLUDE_PICO_DHCP_COMMON
+#include "pico_config.h"
+#include "pico_addressing.h"
+
+#define PICO_DHCPD_PORT (short_be(67))
+#define PICO_DHCP_CLIENT_PORT (short_be(68))
+#define PICO_DHCPD_MAGIC_COOKIE (long_be(0x63825363))
+#define PICO_DHCP_HTYPE_ETH 1
+
+/* flags */
+#define PICO_DHCP_FLAG_BROADCAST        0x8000
+
+/* options */
+#define PICO_DHCP_OPT_PAD               0x00
+#define PICO_DHCP_OPT_NETMASK           0x01
+#define PICO_DHCP_OPT_TIME              0x02
+#define PICO_DHCP_OPT_ROUTER            0x03
+#define PICO_DHCP_OPT_DNS               0x06
+#define PICO_DHCP_OPT_HOSTNAME          0x0c
+#define PICO_DHCP_OPT_DOMAINNAME        0x0f
+#define PICO_DHCP_OPT_MTU               0x1a
+#define PICO_DHCP_OPT_BROADCAST         0x1c
+#define PICO_DHCP_OPT_NETBIOSNS         0x2c
+#define PICO_DHCP_OPT_NETBIOSSCOPE      0x2f
+#define PICO_DHCP_OPT_REQIP             0x32
+#define PICO_DHCP_OPT_LEASETIME         0x33
+#define PICO_DHCP_OPT_OPTOVERLOAD       0x34
+#define PICO_DHCP_OPT_MSGTYPE           0x35
+#define PICO_DHCP_OPT_SERVERID          0x36
+#define PICO_DHCP_OPT_PARAMLIST         0x37
+#define PICO_DHCP_OPT_MESSAGE           0x38
+#define PICO_DHCP_OPT_MAXMSGSIZE        0x39
+#define PICO_DHCP_OPT_RENEWALTIME       0x3a
+#define PICO_DHCP_OPT_REBINDINGTIME     0x3b
+#define PICO_DHCP_OPT_VENDORID          0x3c
+#define PICO_DHCP_OPT_CLIENTID          0x3d
+#define PICO_DHCP_OPT_DOMAINSEARCH      0x77
+#define PICO_DHCP_OPT_STATICROUTE       0x79
+#define PICO_DHCP_OPT_END               0xFF
+
+/* options len */
+#define PICO_DHCP_OPTLEN_HDR            2 /* account for code and len field */
+#define PICO_DHCP_OPTLEN_NETMASK        6
+#define PICO_DHCP_OPTLEN_ROUTER         6
+#define PICO_DHCP_OPTLEN_DNS            6
+#define PICO_DHCP_OPTLEN_BROADCAST      6
+#define PICO_DHCP_OPTLEN_REQIP          6
+#define PICO_DHCP_OPTLEN_LEASETIME      6
+#define PICO_DHCP_OPTLEN_OPTOVERLOAD    3
+#define PICO_DHCP_OPTLEN_MSGTYPE        3
+#define PICO_DHCP_OPTLEN_SERVERID       6
+#define PICO_DHCP_OPTLEN_PARAMLIST      9 /* PicoTCP specific */
+#define PICO_DHCP_OPTLEN_MAXMSGSIZE     4
+#define PICO_DHCP_OPTLEN_RENEWALTIME    6
+#define PICO_DHCP_OPTLEN_REBINDINGTIME  6
+#define PICO_DHCP_OPTLEN_END            1
+
+/* op codes */
+#define PICO_DHCP_OP_REQUEST            1
+#define PICO_DHCP_OP_REPLY              2
+
+/* rfc message types */
+#define PICO_DHCP_MSG_DISCOVER          1
+#define PICO_DHCP_MSG_OFFER             2
+#define PICO_DHCP_MSG_REQUEST           3
+#define PICO_DHCP_MSG_DECLINE           4
+#define PICO_DHCP_MSG_ACK               5
+#define PICO_DHCP_MSG_NAK               6
+#define PICO_DHCP_MSG_RELEASE           7
+#define PICO_DHCP_MSG_INFORM            8
+
+/* custom message types */
+#define PICO_DHCP_EVENT_T1              9
+#define PICO_DHCP_EVENT_T2              10
+#define PICO_DHCP_EVENT_LEASE           11
+#define PICO_DHCP_EVENT_RETRANSMIT      12
+#define PICO_DHCP_EVENT_NONE            0xff
+
+PACKED_STRUCT_DEF pico_dhcp_hdr
+{
+    uint8_t op;
+    uint8_t htype;
+    uint8_t hlen;
+    uint8_t hops; /* zero */
+    uint32_t xid; /* store this in the request */
+    uint16_t secs; /* ignore */
+    uint16_t flags;
+    uint32_t ciaddr; /* client address - if asking for renewal */
+    uint32_t yiaddr; /* your address (client) */
+    uint32_t siaddr; /* dhcp offered address */
+    uint32_t giaddr; /* relay agent, bootp. */
+    uint8_t hwaddr[6];
+    uint8_t hwaddr_padding[10];
+    char hostname[64];
+    char bootp_filename[128];
+    uint32_t dhcp_magic;
+    uint8_t options[0];
+};
+
+PACKED_STRUCT_DEF pico_dhcp_opt
+{
+    uint8_t code;
+    uint8_t len;
+    PACKED_UNION_DEF dhcp_opt_ext_u {
+        PEDANTIC_STRUCT_DEF netmask_s {
+            struct pico_ip4 ip;
+        } netmask;
+        PEDANTIC_STRUCT_DEF router_s {
+            struct pico_ip4 ip;
+        } router;
+        PEDANTIC_STRUCT_DEF dns_s {
+            struct pico_ip4 ip;
+        } dns1;
+        struct dns_s dns2;
+        PEDANTIC_STRUCT_DEF broadcast_s {
+            struct pico_ip4 ip;
+        } broadcast;
+        PEDANTIC_STRUCT_DEF req_ip_s {
+            struct pico_ip4 ip;
+        } req_ip;
+        PEDANTIC_STRUCT_DEF lease_time_s {
+            uint32_t time;
+        } lease_time;
+        PEDANTIC_STRUCT_DEF opt_overload_s {
+            uint8_t value;
+        } opt_overload;
+        PEDANTIC_STRUCT_DEF tftp_server_s {
+            char name[1];
+        } tftp_server;
+        PEDANTIC_STRUCT_DEF bootfile_s {
+            char name[1];
+        } bootfile;
+        PEDANTIC_STRUCT_DEF msg_type_s {
+            uint8_t type;
+        } msg_type;
+        PEDANTIC_STRUCT_DEF server_id_s {
+            struct pico_ip4 ip;
+        } server_id;
+        PEDANTIC_STRUCT_DEF param_list_s {
+            uint8_t code[1];
+        } param_list;
+        PEDANTIC_STRUCT_DEF message_s {
+            char error[1];
+        } message;
+        PEDANTIC_STRUCT_DEF max_msg_size_s {
+            uint16_t size;
+        } max_msg_size;
+        PEDANTIC_STRUCT_DEF renewal_time_s {
+            uint32_t time;
+        } renewal_time;
+        PEDANTIC_STRUCT_DEF rebinding_time_s {
+            uint32_t time;
+        } rebinding_time;
+        PEDANTIC_STRUCT_DEF vendor_id_s {
+            uint8_t id[1];
+        } vendor_id;
+        PEDANTIC_STRUCT_DEF client_id_s {
+            uint8_t id[1];
+        } client_id;
+    } ext;
+};
+
+uint8_t dhcp_get_next_option(uint8_t *begin, uint8_t *data, int *len, uint8_t **nextopt);
+struct pico_dhcp_opt *pico_dhcp_next_option(struct pico_dhcp_opt **ptr);
+uint8_t pico_dhcp_are_options_valid(void *ptr, int32_t len);
+
+uint8_t pico_dhcp_opt_netmask(void *ptr, struct pico_ip4 *ip);
+uint8_t pico_dhcp_opt_router(void *ptr, struct pico_ip4 *ip);
+uint8_t pico_dhcp_opt_dns(void *ptr, struct pico_ip4 *ip);
+uint8_t pico_dhcp_opt_broadcast(void *ptr, struct pico_ip4 *ip);
+uint8_t pico_dhcp_opt_reqip(void *ptr, struct pico_ip4 *ip);
+uint8_t pico_dhcp_opt_leasetime(void *ptr, uint32_t time);
+uint8_t pico_dhcp_opt_msgtype(void *ptr, uint8_t type);
+uint8_t pico_dhcp_opt_serverid(void *ptr, struct pico_ip4 *ip);
+uint8_t pico_dhcp_opt_paramlist(void *ptr);
+uint8_t pico_dhcp_opt_maxmsgsize(void *ptr, uint16_t size);
+uint8_t pico_dhcp_opt_end(void *ptr);
+#endif
diff --git a/net/picotcp/modules/pico_dns_client.h b/net/picotcp/modules/pico_dns_client.h
new file mode 100644
index 0000000..910cc92
--- /dev/null
+++ b/net/picotcp/modules/pico_dns_client.h
@@ -0,0 +1,46 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012 TASS Belgium NV. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   .
+
+   Authors: Kristof Roelants
+ *********************************************************************/
+
+#ifndef INCLUDE_PICO_DNS_CLIENT
+#define INCLUDE_PICO_DNS_CLIENT
+
+#define PICO_DNS_NS_DEL 0
+#define PICO_DNS_NS_ADD 1
+#include "pico_config.h"
+
+/* Compression values */
+#define PICO_DNS_LABEL 0
+#define PICO_DNS_POINTER 3
+
+/* Label len */
+#define PICO_DNS_LABEL_INITIAL 1u
+#define PICO_DNS_LABEL_ROOT 1
+
+/* TTL values */
+#define PICO_DNS_MAX_TTL 604800 /* one week */
+
+/* Len of an IPv4 address string */
+#define PICO_DNS_IPV4_ADDR_LEN 16
+#define PICO_DNS_IPV6_ADDR_LEN 54
+
+/* Default nameservers + port */
+#define PICO_DNS_NS_DEFAULT "208.67.222.222"
+#define PICO_DNS_NS_PORT 53
+
+int pico_dns_client_init(void);
+/* flag is PICO_DNS_NS_DEL or PICO_DNS_NS_ADD */
+int pico_dns_client_nameserver(struct pico_ip4 *ns, uint8_t flag);
+int pico_dns_client_getaddr(const char *url, void (*callback)(char *ip, void *arg), void *arg);
+int pico_dns_client_getname(const char *ip, void (*callback)(char *url, void *arg), void *arg);
+#ifdef PICO_SUPPORT_IPV6
+int pico_dns_client_getaddr6(const char *url, void (*callback)(char *, void *), void *arg);
+int pico_dns_client_getname6(const char *url, void (*callback)(char *, void *), void *arg);
+#endif
+
+#endif /* _INCLUDE_PICO_DNS_CLIENT */
diff --git a/net/picotcp/modules/pico_dns_common.h b/net/picotcp/modules/pico_dns_common.h
new file mode 100644
index 0000000..9172696
--- /dev/null
+++ b/net/picotcp/modules/pico_dns_common.h
@@ -0,0 +1,521 @@
+
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012 TASS Belgium NV. Some rights reserved.
+   See LICENSE and COPYING for usage.
+   .
+   Authors: Toon Stegen, Jelle De Vleeschouwer
+ *********************************************************************/
+
+#ifndef INCLUDE_PICO_DNS_COMMON
+#define INCLUDE_PICO_DNS_COMMON
+
+#include "pico_config.h"
+#include "pico_tree.h"
+
+/* TYPE values */
+#define PICO_DNS_TYPE_A 1
+#define PICO_DNS_TYPE_CNAME 5
+#define PICO_DNS_TYPE_PTR 12
+#define PICO_DNS_TYPE_TXT 16
+#define PICO_DNS_TYPE_AAAA 28
+#define PICO_DNS_TYPE_SRV 33
+#define PICO_DNS_TYPE_NSEC 47
+#define PICO_DNS_TYPE_ANY 255
+
+/* CLASS values */
+#define PICO_DNS_CLASS_IN 1
+
+/* FLAG values */
+#define PICO_DNS_QR_QUERY 0
+#define PICO_DNS_QR_RESPONSE 1
+#define PICO_DNS_OPCODE_QUERY 0
+#define PICO_DNS_OPCODE_IQUERY 1
+#define PICO_DNS_OPCODE_STATUS 2
+#define PICO_DNS_AA_NO_AUTHORITY 0
+#define PICO_DNS_AA_IS_AUTHORITY 1
+#define PICO_DNS_TC_NO_TRUNCATION 0
+#define PICO_DNS_TC_IS_TRUNCATED 1
+#define PICO_DNS_RD_NO_DESIRE 0
+#define PICO_DNS_RD_IS_DESIRED 1
+#define PICO_DNS_RA_NO_SUPPORT 0
+#define PICO_DNS_RA_IS_SUPPORTED 1
+#define PICO_DNS_RCODE_NO_ERROR 0
+#define PICO_DNS_RCODE_EFORMAT 1
+#define PICO_DNS_RCODE_ESERVER 2
+#define PICO_DNS_RCODE_ENAME 3
+#define PICO_DNS_RCODE_ENOIMP 4
+#define PICO_DNS_RCODE_EREFUSED 5
+
+#define PICO_ARPA_IPV4_SUFFIX ".in-addr.arpa"
+
+#ifdef PICO_SUPPORT_IPV6
+#define STRLEN_PTR_IP6 63
+#define PICO_ARPA_IPV6_SUFFIX ".IP6.ARPA"
+#endif
+
+#define PICO_DNS_NAMEBUF_SIZE (256)
+
+enum pico_dns_arpa
+{
+    PICO_DNS_ARPA4,
+    PICO_DNS_ARPA6,
+    PICO_DNS_NO_ARPA,
+};
+
+/* flags split in 2x uint8 due to endianness */
+PACKED_STRUCT_DEF pico_dns_header
+{
+    uint16_t id;        /* Packet id */
+    uint8_t rd : 1;     /* Recursion Desired */
+    uint8_t tc : 1;     /* TrunCation */
+    uint8_t aa : 1;     /* Authoritative Answer */
+    uint8_t opcode : 4; /* Opcode */
+    uint8_t qr : 1;     /* Query/Response */
+    uint8_t rcode : 4;  /* Response code */
+    uint8_t z : 3;      /* Zero */
+    uint8_t ra : 1;     /* Recursion Available */
+    uint16_t qdcount;   /* Question count */
+    uint16_t ancount;   /* Answer count */
+    uint16_t nscount;   /* Authority count */
+    uint16_t arcount;   /* Additional count */
+};
+typedef struct pico_dns_header pico_dns_packet;
+
+/* Question fixed-sized fields */
+PACKED_STRUCT_DEF pico_dns_question_suffix
+{
+    uint16_t qtype;
+    uint16_t qclass;
+};
+
+/* Resource record fixed-sized fields */
+PACKED_STRUCT_DEF pico_dns_record_suffix
+{
+    uint16_t rtype;
+    uint16_t rclass;
+    uint32_t rttl;
+    uint16_t rdlength;
+};
+
+/* DNS QUESTION */
+struct pico_dns_question
+{
+    char *qname;
+    struct pico_dns_question_suffix *qsuffix;
+    uint16_t qname_length;
+    uint8_t proto;
+};
+
+/* DNS RECORD */
+struct pico_dns_record
+{
+    char *rname;
+    struct pico_dns_record_suffix *rsuffix;
+    uint8_t *rdata;
+    uint16_t rname_length;
+};
+
+/* MARK: v NAME & IP FUNCTIONS */
+
+/* ****************************************************************************
+ *  Checks if the DNS name doesn't exceed 256 bytes including zero-byte.
+ *
+ *  @param namelen Length of the DNS name-string including zero-byte
+ *  @return 0 when the length is correct
+ * ****************************************************************************/
+int
+pico_dns_check_namelen( uint16_t namelen );
+
+/* ****************************************************************************
+ *  Returns the length of a name in a DNS-packet as if DNS name compression
+ *  would be applied to the packet. If there's no compression present this
+ *	returns the strlen. If there's compression present this returns the length
+ *	until the compression-pointer + 1.
+ *
+ *  @param name Compressed name you want the calculate the strlen from
+ *  @return Returns strlen of a compressed name, takes the first byte of compr-
+ *			ession pointer into account but not the second byte, which acts
+ *			like a trailing zero-byte.
+ * ****************************************************************************/
+uint16_t
+pico_dns_namelen_comp( char *name );
+
+/* ****************************************************************************
+ *  Returns the uncompressed name in DNS name format when DNS name compression
+ *  is applied to the packet-buffer.
+ *
+ *  @param name   Compressed name, should be in the bounds of the actual packet
+ *  @param packet Packet that contains the compressed name
+ *  @return Returns the decompressed name, NULL on failure.
+ * ****************************************************************************/
+char *
+pico_dns_decompress_name( char *name, pico_dns_packet *packet );
+
+/* ****************************************************************************
+ *  Converts a DNS name in DNS name format to a name in URL format. Provides
+ *  space for the name in URL format as well. PICO_FREE() should be called on
+ *  the returned string buffer that contains the name in URL format.
+ *
+ *  @param qname DNS name in DNS name format to convert
+ *  @return Returns a pointer to a string-buffer with the URL name on success.
+ * ****************************************************************************/
+char *
+pico_dns_qname_to_url( const char *qname );
+
+/* ****************************************************************************
+ *  Converts a DNS name in URL format to name in DNS name format. Provides
+ *  space for the DNS name as well. PICO_FREE() should be called on the returned
+ *  string buffer that contains the DNS name.
+ *
+ *  @param url DNS name in URL format to convert
+ *  @return Returns a pointer to a string-buffer with the DNS name on success.
+ * ****************************************************************************/
+char *
+pico_dns_url_to_qname( const char *url );
+
+/* ****************************************************************************
+ *  @param url String-buffer
+ *  @return Length of string-buffer in an uint16_t
+ * ****************************************************************************/
+uint16_t
+pico_dns_strlen( const char *url );
+
+/* ****************************************************************************
+ *  Replaces .'s in a DNS name in URL format by the label lengths. So it
+ *  actually converts a name in URL format to a name in DNS name format.
+ *  f.e. "*www.google.be" => "3www6google2be0"
+ *
+ *  @param url    Location to buffer with name in URL format. The URL needs to
+ *                be +1 byte offset in the actual buffer. Size is should be
+ *                strlen(url) + 2.
+ *  @param maxlen Maximum length of buffer so it doesn't cause a buffer overflow
+ *  @return 0 on success, something else on failure.
+ * ****************************************************************************/
+int pico_dns_name_to_dns_notation( char *url, unsigned int maxlen );
+
+/* ****************************************************************************
+ *  Replaces the label lengths in a DNS-name by .'s. So it actually converts a
+ *  name in DNS format to a name in URL format.
+ *  f.e. 3www6google2be0 => .www.google.be
+ *
+ *  @param ptr    Location to buffer with name in DNS name format
+ *  @param maxlen Maximum length of buffer so it doesn't cause a buffer overflow
+ *  @return 0 on success, something else on failure.
+ * ****************************************************************************/
+int pico_dns_notation_to_name( char *ptr, unsigned int maxlen );
+
+/* ****************************************************************************
+ *  Determines the length of the first label of a DNS name in URL-format
+ *
+ *  @param url DNS name in URL-format
+ *  @return Length of the first label of DNS name in URL-format
+ * ****************************************************************************/
+uint16_t
+pico_dns_first_label_length( const char *url );
+
+/* ****************************************************************************
+ *  Mirrors a dotted IPv4-address string.
+ *	f.e. 192.168.0.1 => 1.0.168.192
+ *
+ *  @param ptr
+ *  @return 0 on success, something else on failure.
+ * ****************************************************************************/
+int
+pico_dns_mirror_addr( char *ptr );
+
+/* ****************************************************************************
+ *  Convert an IPv6-address in string-format to a IPv6-address in nibble-format.
+ *	Doesn't add a IPv6 ARPA-suffix though.
+ *
+ *  @param ip  IPv6-address stored as a string
+ *  @param dst Destination to store IPv6-address in nibble-format
+ * ****************************************************************************/
+void
+pico_dns_ipv6_set_ptr( const char *ip, char *dst );
+
+/* MARK: QUESTION FUNCTIONS */
+
+/* ****************************************************************************
+ *  Deletes a single DNS Question.
+ *
+ *  @param question Void-pointer to DNS Question. Can be used with pico_tree_-
+ *					destroy.
+ *  @return Returns 0 on success, something else on failure.
+ * ****************************************************************************/
+int
+pico_dns_question_delete( void **question);
+
+/* ****************************************************************************
+ *  Fills in the DNS question suffix-fields with the correct values.
+ *
+ *  todo: Update pico_dns_client to make the same mechanism possible as with
+ *        filling DNS Resource Record-suffixes. This function shouldn't be an
+ *		  API-function.
+ *
+ *  @param suf    Pointer to the suffix member of the DNS question.
+ *  @param qtype  DNS type of the DNS question to be.
+ *  @param qclass DNS class of the DNS question to be.
+ *  @return Returns 0 on success, something else on failure.
+ * ****************************************************************************/
+int
+pico_dns_question_fill_suffix( struct pico_dns_question_suffix *suf,
+                               uint16_t qtype,
+                               uint16_t qclass );
+
+/* ****************************************************************************
+ *  Creates a standalone DNS Question with a given name and type.
+ *
+ *  @param url     DNS question name in URL format. Will be converted to DNS
+ *				   name notation format.
+ *  @param len     Will be filled with the total length of the DNS question.
+ *  @param proto   Protocol for which you want to create a question. Can be
+ *				   either PICO_PROTO_IPV4 or PICO_PROTO_IPV6.
+ *  @param qtype   DNS type of the question to be.
+ *  @param qclass  DNS class of the question to be.
+ *  @param reverse When this is true, a reverse resolution name will be gene-
+ *				   from the URL
+ *  @return Returns pointer to the created DNS Question on success, NULL on
+ *			failure.
+ * ****************************************************************************/
+struct pico_dns_question *
+pico_dns_question_create( const char *url,
+                          uint16_t *len,
+                          uint8_t proto,
+                          uint16_t qtype,
+                          uint16_t qclass,
+                          uint8_t reverse );
+
+/* ****************************************************************************
+ *  Decompresses the name of a single DNS question.
+ *
+ *  @param question Question you want to decompress the name of
+ *  @param packet   Packet in which the DNS question is contained.
+ *  @return Pointer to original name of the DNS question before decompressing.
+ * ****************************************************************************/
+char *
+pico_dns_question_decompress( struct pico_dns_question *question,
+                              pico_dns_packet *packet );
+
+/* MARK: RESOURCE RECORD FUNCTIONS */
+
+/* ****************************************************************************
+ *  Deletes a single DNS resource record.
+ *
+ *  @param record Void-pointer to DNS record. Can be used with pico_tree_destroy
+ *  @return Returns 0 on success, something else on failure.
+ * ****************************************************************************/
+int
+pico_dns_record_delete( void **record );
+
+/* ****************************************************************************
+ *  Just makes a hardcopy from a single DNS Resource Record
+ *
+ *  @param record DNS record you want to copy
+ *  @return Pointer to copy of DNS record.
+ * ****************************************************************************/
+struct pico_dns_record *
+pico_dns_record_copy( struct pico_dns_record *record );
+
+/* ****************************************************************************
+ *  Create a standalone DNS Resource Record with given name, type and data.
+ *
+ *  @param url     DNS rrecord name in URL format. Will be converted to DNS
+ *                 name notation format.
+ *  @param _rdata  Memory buffer with data to insert in the resource record. If
+ *				   data of record should contain a DNS name, the name in the
+ *				   databuffer needs to be in URL-format.
+ *  @param datalen The exact length in bytes of the _rdata-buffer. If data of
+ *				   record should contain a DNS name, datalen needs to be
+ *				   pico_dns_strlen(_rdata).
+ *  @param len     Will be filled with the total length of the DNS rrecord.
+ *  @param rtype   DNS type of the resource record to be.
+ *  @param rclass  DNS class of the resource record to be.
+ *  @param rttl    DNS ttl of the resource record to be.
+ *  @return Returns pointer to the created DNS Resource Record
+ * ****************************************************************************/
+struct pico_dns_record *
+pico_dns_record_create( const char *url,
+                        void *_rdata,
+                        uint16_t datalen,
+                        uint16_t *len,
+                        uint16_t rtype,
+                        uint16_t rclass,
+                        uint32_t rttl );
+
+/* ****************************************************************************
+ *  Decompresses the name of single DNS record.
+ *
+ *  @param record DNS record to decompress the name of.
+ *  @param packet Packet in which is DNS record is present
+ *  @return Pointer to original name of the DNS record before decompressing.
+ * ****************************************************************************/
+char *
+pico_dns_record_decompress( struct pico_dns_record *record,
+                            pico_dns_packet *packet );
+
+/* MARK: COMPARING */
+
+/* ****************************************************************************
+ *  Compares two databuffers against each other.
+ *
+ *  @param a          1st Memory buffer to compare
+ *  @param b          2nd Memory buffer to compare
+ *  @param rdlength_a Length of 1st memory buffer
+ *  @param rdlength_b Length of 2nd memory buffer
+ *  @return 0 when the buffers are equal, returns difference when they're not.
+ * ****************************************************************************/
+int
+pico_dns_rdata_cmp( uint8_t *a, uint8_t *b,
+                    uint16_t rdlength_a, uint16_t rdlength_b );
+
+/* ****************************************************************************
+ *  Compares 2 DNS questions
+ *
+ *  @param qa DNS question A as a void-pointer (for pico_tree)
+ *  @param qb DNS question A as a void-pointer (for pico_tree)
+ *  @return 0 when questions are equal, returns difference when they're not.
+ * ****************************************************************************/
+int
+pico_dns_question_cmp( void *qa,
+                       void *qb );
+
+/* ****************************************************************************
+ *  Compares 2 DNS records by type and name only
+ *
+ *  @param ra DNS record A as a void-pointer (for pico_tree)
+ *  @param rb DNS record B as a void-pointer (for pico_tree)
+ *  @return 0 when name and type of records are equal, returns difference when
+ *			they're not.
+ * ****************************************************************************/
+int
+pico_dns_record_cmp_name_type( void *ra,
+                               void *rb );
+
+/* ****************************************************************************
+ *  Compares 2 DNS records by type, name AND rdata for a truly unique result
+ *
+ *  @param ra DNS record A as a void-pointer (for pico_tree)
+ *  @param rb DNS record B as a void-pointer (for pico_tree)
+ *  @return 0 when records are equal, returns difference when they're not
+ * ****************************************************************************/
+int
+pico_dns_record_cmp( void *ra,
+                     void *rb );
+
+/* MARK: PICO_TREE */
+
+/* ****************************************************************************
+ *  Erases a pico_tree entirely.
+ *
+ *  @param tree        Pointer to a pico_tree-instance
+ *  @param node_delete Helper-function for type-specific deleting.
+ *  @return Returns 0 on success, something else on failure.
+ * ****************************************************************************/
+int
+pico_tree_destroy( struct pico_tree *tree, int (*node_delete)(void **));
+
+/* ****************************************************************************
+ *  Determines the amount of nodes in a pico_tree
+ *
+ *  @param tree Pointer to pico_tree-instance
+ *  @return Amount of items in the tree.
+ * ****************************************************************************/
+uint16_t
+pico_tree_count( struct pico_tree *tree );
+
+/* ****************************************************************************
+ *  Definition of DNS question tree
+ * ****************************************************************************/
+typedef struct pico_tree pico_dns_qtree;
+#define PICO_DNS_QTREE_DECLARE(name) \
+    pico_dns_qtree (name) = {&LEAF, pico_dns_question_cmp}
+#define PICO_DNS_QTREE_DESTROY(qtree) \
+    pico_tree_destroy(qtree, pico_dns_question_delete)
+
+/* ****************************************************************************
+ *  Deletes all the questions with given DNS name from a pico_tree
+ *
+ *  @param qtree Pointer to pico_tree-instance which contains DNS questions
+ *  @param name  Name of the questions you want to delete
+ *  @return Returns 0 on success, something else on failure.
+ * ****************************************************************************/
+int
+pico_dns_qtree_del_name( struct pico_tree *qtree,
+                         const char *name );
+
+/* ****************************************************************************
+ *  Checks whether a question with given name is in the tree or not.
+ *
+ *  @param qtree Pointer to pico_tree-instance which contains DNS questions
+ *  @param name  Name you want to check for
+ *  @return 1 when the name is present in the qtree, 0 when it's not.
+ * ****************************************************************************/
+int
+pico_dns_qtree_find_name( struct pico_tree *qtree,
+                          const char *name );
+
+/* ****************************************************************************
+ *  Definition of DNS record tree
+ * ****************************************************************************/
+typedef struct pico_tree pico_dns_rtree;
+#define PICO_DNS_RTREE_DECLARE(name) \
+    pico_dns_rtree (name) = {&LEAF, pico_dns_record_cmp}
+#define PICO_DNS_RTREE_DESTROY(rtree) \
+    pico_tree_destroy((rtree), pico_dns_record_delete)
+
+/* MARK: DNS PACKET FUNCTIONS */
+
+/* ****************************************************************************
+ *  Fills the header section of a DNS packet with the correct flags and section
+ *  -counts.
+ *
+ *  @param hdr     Header to fill in.
+ *  @param qdcount Amount of questions added to the packet
+ *  @param ancount Amount of answer records added to the packet
+ *  @param nscount Amount of authority records added to the packet
+ *  @param arcount Amount of additional records added to the packet
+ * ****************************************************************************/
+void
+pico_dns_fill_packet_header( struct pico_dns_header *hdr,
+                             uint16_t qdcount,
+                             uint16_t ancount,
+                             uint16_t authcount,
+                             uint16_t addcount );
+
+/* ****************************************************************************
+ *  Creates a DNS Query packet with given question and resource records to put
+ *  the Resource Record Sections. If a NULL-pointer is provided for a certain
+ *  tree, no records will be added to that particular section of the packet.
+ *
+ *  @param qtree  DNS Questions to put in the Question Section
+ *  @param antree DNS Records to put in the Answer Section
+ *  @param nstree DNS Records to put in the Authority Section
+ *  @param artree DNS Records to put in the Additional Section
+ *  @param len    Will get filled with the entire size of the packet
+ *  @return Pointer to created DNS packet
+ * ****************************************************************************/
+pico_dns_packet *
+pico_dns_query_create( struct pico_tree *qtree,
+                       struct pico_tree *antree,
+                       struct pico_tree *nstree,
+                       struct pico_tree *artree,
+                       uint16_t *len );
+
+/* ****************************************************************************
+ *  Creates a DNS Answer packet with given resource records to put in the
+ *  Resource Record Sections. If a NULL-pointer is provided for a certain tree,
+ *  no records will be added to that particular section of the packet.
+ *
+ *  @param antree DNS Records to put in the Answer Section
+ *  @param nstree DNS Records to put in the Authority Section
+ *  @param artree DNS Records to put in the Additional Section
+ *  @param len    Will get filled with the entire size of the packet
+ *  @return Pointer to created DNS packet.
+ * ****************************************************************************/
+pico_dns_packet *
+pico_dns_answer_create( struct pico_tree *antree,
+                        struct pico_tree *nstree,
+                        struct pico_tree *artree,
+                        uint16_t *len );
+
+#endif /* _INCLUDE_PICO_DNS_COMMON */
diff --git a/net/picotcp/modules/pico_dns_sd.h b/net/picotcp/modules/pico_dns_sd.h
new file mode 100644
index 0000000..77f8ef2
--- /dev/null
+++ b/net/picotcp/modules/pico_dns_sd.h
@@ -0,0 +1,90 @@
+/* ****************************************************************************
+ *  PicoTCP. Copyright (c) 2014 TASS Belgium NV. Some rights reserved.
+ *  See LICENSE and COPYING for usage.
+ *  .
+ *  Author: Jelle De Vleeschouwer
+ * ****************************************************************************/
+#ifndef INCLUDE_PICO_DNS_SD
+#define INCLUDE_PICO_DNS_SD
+
+#include "pico_mdns.h"
+
+typedef struct
+{
+    char *key;
+    char *value;
+} key_value_pair_t;
+
+typedef struct
+{
+    key_value_pair_t **pairs;
+    uint16_t count;
+} kv_vector;
+
+#define PICO_DNS_SD_KV_VECTOR_DECLARE(name) \
+    kv_vector (name) = {0}
+
+/* ****************************************************************************
+ *  Just calls pico_mdns_init in it's turn to initialise the mDNS-module.
+ *  See pico_mdns.h for description.
+ * ****************************************************************************/
+int
+pico_dns_sd_init( const char *_hostname,
+                  struct pico_ip4 address,
+                  void (*callback)(pico_mdns_rtree *,
+                                   char *,
+                                   void *),
+                  void *arg );
+
+/* ****************************************************************************
+ *  Register a DNS-SD service via Multicast DNS on the local network.
+ *
+ *  @param name     Instance Name of the service, f.e. "Printer 2nd Floor".
+ *  @param type     ServiceType of the service, f.e. "_http._tcp".
+ *  @param port     Port number on which the service runs.
+ *  @param txt_data TXT data to create TXT record with, need kv_vector-type,
+ *                  Declare such a type with PICO_DNS_SD_KV_VECTOR_DECLARE(*) &
+ *                  add key-value pairs with pico_dns_sd_kv_vector_add().
+ *  @param ttl      TTL
+ *  @param callback Callback-function to call when the service is registered.
+ *  @return
+ * ****************************************************************************/
+int
+pico_dns_sd_register_service( const char *name,
+                              const char *type,
+                              uint16_t port,
+                              kv_vector *txt_data,
+                              uint16_t ttl,
+                              void (*callback)(pico_mdns_rtree *,
+                                               char *,
+                                               void *),
+                              void *arg);
+
+/* ****************************************************************************
+ *  Does nothing for now.
+ *
+ *  @param type     Type to browse for.
+ *  @param callback Callback to call when something particular happens.
+ *  @return When the module successfully started browsing the servicetype.
+ * ****************************************************************************/
+int
+pico_dns_sd_browse_service( const char *type,
+                            void (*callback)(pico_mdns_rtree *,
+                                             char *,
+                                             void *),
+                            void *arg );
+
+/* ****************************************************************************
+ *  Add a key-value pair the a key-value pair vector.
+ *
+ *  @param vector Vector to add the pair to.
+ *  @param key    Key of the pair, cannot be NULL.
+ *  @param value  Value of the pair, can be NULL, empty ("") or filled ("qkejq")
+ *  @return Returns 0 when the pair is added successfully, something else on
+ *			failure.
+ * ****************************************************************************/
+int
+pico_dns_sd_kv_vector_add( kv_vector *vector, char *key, char *value );
+
+
+#endif /* _INCLUDE_PICO_DNS_SD */
\ No newline at end of file
diff --git a/net/picotcp/modules/pico_fragments.c b/net/picotcp/modules/pico_fragments.c
new file mode 100644
index 0000000..e6fe44b
--- /dev/null
+++ b/net/picotcp/modules/pico_fragments.c
@@ -0,0 +1,345 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012 TASS Belgium NV. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   Authors: Laurens Miers, Daniele Lacamera
+ *********************************************************************/
+
+
+#include "pico_config.h"
+#ifdef PICO_SUPPORT_IPV6
+#include "pico_ipv6.h"
+#include "pico_icmp6.h"
+#endif
+#ifdef PICO_SUPPORT_IPV4
+#include "pico_ipv4.h"
+#include "pico_icmp4.h"
+#endif
+#include "pico_stack.h"
+#include "pico_eth.h"
+#include "pico_udp.h"
+#include "pico_tcp.h"
+#include "pico_socket.h"
+#include "pico_device.h"
+#include "pico_tree.h"
+#include "pico_constants.h"
+#include "pico_fragments.h"
+#define frag_dbg(...) do {} while(0)
+
+#define IP6_FRAG_OFF(x)         ((x & 0xFFF8u))
+#define IP6_FRAG_MORE(x)        ((x & 0x0001))
+#define IP6_FRAG_ID(x)          ((uint32_t)((x->ext.frag.id[0] << 24) + (x->ext.frag.id[1] << 16) + \
+                                            (x->ext.frag.id[2] << 8) + x->ext.frag.id[3]))
+
+#define IP4_FRAG_OFF(frag)      (((uint32_t)frag & PICO_IPV4_FRAG_MASK) << 3ul)
+#define IP4_FRAG_MORE(frag)     ((frag & PICO_IPV4_MOREFRAG) ? 1 : 0)
+#define IP4_FRAG_ID(hdr)        (hdr->id)
+
+#define FRAG_OFF(net, frag)     ((net == PICO_PROTO_IPV4) ? (IP4_FRAG_OFF(frag)) : (IP6_FRAG_OFF(frag)))
+#define FRAG_MORE(net, frag)    ((net == PICO_PROTO_IPV4) ? (IP4_FRAG_MORE(frag)) : (IP6_FRAG_MORE(frag)))
+
+#define PICO_IPV6_FRAG_TIMEOUT   60000
+#define PICO_IPV4_FRAG_TIMEOUT   15000
+
+static int pico_ipv6_frag_compare(void *ka, void *kb);
+static int pico_ipv4_frag_compare(void *ka, void *kb);
+static void pico_ipv6_fragments_complete(unsigned int len, uint8_t proto);
+static void pico_ipv4_fragments_complete(unsigned int len, uint8_t proto);
+static void pico_fragments_complete(unsigned int bookmark, uint8_t proto, uint8_t net);
+static int pico_fragments_check_complete(uint8_t proto, uint8_t net);
+static void pico_frag_expire(pico_time now, void *arg);
+static void pico_ipv6_frag_timer_on(void);
+static void pico_ipv4_frag_timer_on(void);
+static int pico_ipv6_frag_match(struct pico_frame *a, struct pico_frame *b);
+static int pico_ipv4_frag_match(struct pico_frame *a, struct pico_frame *b);
+
+static uint32_t ipv6_cur_frag_id = 0u;
+static uint32_t ipv4_cur_frag_id = 0u;
+
+static int pico_ipv6_frag_compare(void *ka, void *kb)
+{
+    struct pico_frame *a = ka, *b = kb;
+    if (IP6_FRAG_OFF(a->frag) > IP6_FRAG_OFF(b->frag))
+        return 1;
+
+    if (IP6_FRAG_OFF(a->frag) < IP6_FRAG_OFF(b->frag))
+        return -1;
+
+    return 0;
+}
+PICO_TREE_DECLARE(ipv6_fragments, pico_ipv6_frag_compare);
+
+struct pico_timer *ipv6_fragments_timer = NULL;
+
+static int pico_ipv4_frag_compare(void *ka, void *kb)
+{
+    struct pico_frame *a = ka, *b = kb;
+    if (IP4_FRAG_OFF(a->frag) > IP4_FRAG_OFF(b->frag))
+        return 1;
+
+    if (IP4_FRAG_OFF(a->frag) < IP4_FRAG_OFF(b->frag))
+        return -1;
+
+    return 0;
+}
+PICO_TREE_DECLARE(ipv4_fragments, pico_ipv4_frag_compare);
+
+struct pico_timer *ipv4_fragments_timer = NULL;
+
+static void pico_ipv6_fragments_complete(unsigned int len, uint8_t proto)
+{
+    struct pico_tree_node *index, *tmp;
+    struct pico_frame *f;
+    unsigned int bookmark = 0;
+    struct pico_frame *full = NULL;
+    struct pico_frame *first = pico_tree_first(&ipv6_fragments);
+
+    full = pico_frame_alloc((uint16_t)(PICO_SIZE_IP6HDR + len));
+    if (full) {
+        full->net_hdr = full->buffer;
+        full->net_len = PICO_SIZE_IP6HDR;
+        memcpy(full->net_hdr, first->net_hdr, full->net_len);
+        full->transport_hdr = full->net_hdr + full->net_len;
+        full->transport_len = (uint16_t)len;
+        full->dev = first->dev;
+        pico_tree_foreach_safe(index, &ipv6_fragments, tmp) {
+            f = index->keyValue;
+            memcpy(full->transport_hdr + bookmark, f->transport_hdr, f->transport_len);
+            bookmark += f->transport_len;
+            pico_tree_delete(&ipv6_fragments, f);
+            pico_frame_discard(f);
+        }
+        pico_transport_receive(full, proto);
+        if (ipv6_fragments_timer) {
+            pico_timer_cancel(ipv6_fragments_timer);
+            ipv6_fragments_timer = NULL;
+        }
+    }
+}
+
+static void pico_ipv4_fragments_complete(unsigned int len, uint8_t proto)
+{
+    struct pico_tree_node *index, *tmp;
+    struct pico_frame *f;
+    unsigned int bookmark = 0;
+    struct pico_frame *full = NULL;
+    struct pico_frame *first = pico_tree_first(&ipv4_fragments);
+
+    full = pico_frame_alloc((uint16_t)(PICO_SIZE_IP4HDR + len));
+    if (full) {
+        full->net_hdr = full->buffer;
+        full->net_len = PICO_SIZE_IP4HDR;
+        memcpy(full->net_hdr, first->net_hdr, full->net_len);
+        full->transport_hdr = full->net_hdr + full->net_len;
+        full->transport_len = (uint16_t)len;
+        full->dev = first->dev;
+        pico_tree_foreach_safe(index, &ipv4_fragments, tmp) {
+            f = index->keyValue;
+            memcpy(full->transport_hdr + bookmark, f->transport_hdr, f->transport_len);
+            bookmark += f->transport_len;
+            pico_tree_delete(&ipv4_fragments, f);
+            pico_frame_discard(f);
+        }
+        pico_transport_receive(full, proto);
+        if (ipv4_fragments_timer) {
+            pico_timer_cancel(ipv4_fragments_timer);
+            ipv4_fragments_timer = NULL;
+        }
+    }
+}
+
+static void pico_fragments_complete(unsigned int bookmark, uint8_t proto, uint8_t net)
+{
+    if (net == PICO_PROTO_IPV4)
+    {
+        pico_ipv4_fragments_complete(bookmark, proto);
+    }
+    else
+    {
+        pico_ipv6_fragments_complete(bookmark, proto);
+    }
+}
+
+static int pico_fragments_check_complete(uint8_t proto, uint8_t net)
+{
+    struct pico_tree_node *index, *temp;
+    struct pico_frame *cur;
+    unsigned int bookmark = 0;
+    struct pico_tree *tree = NULL;
+
+    if (net == PICO_PROTO_IPV4)
+    {
+        tree = &ipv4_fragments;
+    }
+    else
+    {
+        tree = &ipv6_fragments;
+    }
+
+
+    pico_tree_foreach_safe(index, tree, temp) {
+        cur = index->keyValue;
+        if (FRAG_OFF(net, cur->frag) != bookmark)
+            return 0;
+
+        bookmark += cur->transport_len;
+        if (!FRAG_MORE(net, cur->frag)) {
+            pico_fragments_complete(bookmark, proto, net);
+            return 1;
+        }
+    }
+    return 0;
+}
+
+static void pico_frag_expire(pico_time now, void *arg)
+{
+    struct pico_tree_node *index, *tmp;
+    struct pico_frame *f = NULL;
+    struct pico_tree *tree = (struct pico_tree *) arg;
+    struct pico_frame *first = NULL;
+    uint8_t net = 0;
+    (void)now;
+
+    if (!tree)
+    {
+        frag_dbg("Expired packet but no tree supplied!\n");
+        return;
+    }
+
+    first = pico_tree_first(tree);
+
+    if (!first) {
+        frag_dbg("not first - not sending notify\n");
+        return;
+    }
+
+    if (IS_IPV4(first))
+    {
+        net = PICO_PROTO_IPV4;
+        frag_dbg("Packet expired! ID:%hu\n", ipv4_cur_frag_id);
+    }
+    else
+    {
+        net = PICO_PROTO_IPV6;
+        frag_dbg("Packet expired! ID:%hu\n", ipv6_cur_frag_id);
+    }
+
+    /* Empty the tree */
+    pico_tree_foreach_safe(index, tree, tmp) {
+        f = index->keyValue;
+        pico_tree_delete(tree, f);
+        if (f != first)
+            pico_frame_discard(f); /* Later, after ICMP notification...*/
+
+    }
+
+    if (((FRAG_OFF(net, first->frag) == 0) && (pico_frame_dst_is_unicast(first))))
+    {
+        frag_dbg("sending notify\n");
+        pico_notify_frag_expired(first);
+    }
+
+    if (f)
+        pico_tree_delete(tree, f);
+
+    pico_frame_discard(first);
+}
+
+static void pico_ipv6_frag_timer_on(void)
+{
+    ipv6_fragments_timer = pico_timer_add(PICO_IPV6_FRAG_TIMEOUT, pico_frag_expire, &ipv6_fragments);
+}
+
+static void pico_ipv4_frag_timer_on(void)
+{
+    ipv4_fragments_timer = pico_timer_add( PICO_IPV4_FRAG_TIMEOUT, pico_frag_expire, &ipv4_fragments);
+}
+
+
+static int pico_ipv6_frag_match(struct pico_frame *a, struct pico_frame *b)
+{
+    struct pico_ipv6_hdr *ha, *hb;
+    if (!a || !b)
+        return 0;
+
+    ha = (struct pico_ipv6_hdr *)a->net_hdr;
+    hb = (struct pico_ipv6_hdr *)b->net_hdr;
+    if (!ha || !hb)
+        return 0;
+
+    if (memcmp(ha->src.addr, hb->src.addr, PICO_SIZE_IP6) != 0)
+        return 0;
+
+    if (memcmp(ha->dst.addr, hb->dst.addr, PICO_SIZE_IP6) != 0)
+        return 0;
+
+    return 1;
+}
+
+static int pico_ipv4_frag_match(struct pico_frame *a, struct pico_frame *b)
+{
+    struct pico_ipv4_hdr *ha, *hb;
+    if (!a || !b)
+        return 0;
+
+    ha = (struct pico_ipv4_hdr *)a->net_hdr;
+    hb = (struct pico_ipv4_hdr *)b->net_hdr;
+    if (!ha || !hb)
+        return 0;
+
+    if (memcmp(&(ha->src.addr), &(hb->src.addr), PICO_SIZE_IP4) != 0)
+        return 0;
+
+    if (memcmp(&(ha->dst.addr), &(hb->dst.addr), PICO_SIZE_IP4) != 0)
+        return 0;
+
+    return 1;
+}
+
+
+void pico_ipv6_process_frag(struct pico_ipv6_exthdr *frag, struct pico_frame *f, uint8_t proto)
+{
+    struct pico_frame *first = pico_tree_first(&ipv6_fragments);
+
+    if (!first) {
+        if (ipv6_cur_frag_id && (IP6_FRAG_ID(frag) == ipv6_cur_frag_id)) {
+            /* Discard late arrivals, without firing the timer.
+             */
+            frag_dbg("discarded late arrival, exp:%hu found:%hu\n", ipv6_cur_frag_id, IP6_FRAG_ID(frag));
+            return;
+        }
+
+        pico_ipv6_frag_timer_on();
+        ipv6_cur_frag_id = IP6_FRAG_ID(frag);
+        frag_dbg("Started new reassembly, ID:%hu\n", ipv6_cur_frag_id);
+    }
+
+    if (!first || (pico_ipv6_frag_match(f, first) && (IP6_FRAG_ID(frag) == ipv6_cur_frag_id))) {
+        pico_tree_insert(&ipv6_fragments, pico_frame_copy(f));
+    }
+
+    pico_fragments_check_complete(proto, PICO_PROTO_IPV6);
+}
+
+void pico_ipv4_process_frag(struct pico_ipv4_hdr *hdr, struct pico_frame *f, uint8_t proto)
+{
+    struct pico_frame *first = pico_tree_first(&ipv4_fragments);
+
+    f->frag = short_be(hdr->frag);
+    if (!first) {
+        if (ipv4_cur_frag_id && (IP4_FRAG_ID(hdr) == ipv4_cur_frag_id)) {
+            /* Discard late arrivals, without firing the timer,
+             */
+            return;
+        }
+
+        pico_ipv4_frag_timer_on();
+        ipv4_cur_frag_id = IP4_FRAG_ID(hdr);
+    }
+
+    if (!first || (pico_ipv4_frag_match(f, first) && (IP4_FRAG_ID(hdr) == ipv4_cur_frag_id))) {
+        pico_tree_insert(&ipv4_fragments, pico_frame_copy(f));
+    }
+
+    pico_fragments_check_complete(proto, PICO_PROTO_IPV4);
+}
diff --git a/net/picotcp/modules/pico_fragments.h b/net/picotcp/modules/pico_fragments.h
new file mode 100644
index 0000000..e51ec44
--- /dev/null
+++ b/net/picotcp/modules/pico_fragments.h
@@ -0,0 +1,11 @@
+#ifndef PICO_FRAGMENTS_H
+#define PICO_FRAGMENTS_H
+#include "pico_ipv4.h"
+#include "pico_ipv6.h"
+#include "pico_addressing.h"
+#include "pico_frame.h"
+
+void pico_ipv6_process_frag(struct pico_ipv6_exthdr *frag, struct pico_frame *f, uint8_t proto);
+void pico_ipv4_process_frag(struct pico_ipv4_hdr *hdr, struct pico_frame *f, uint8_t proto);
+
+#endif
diff --git a/net/picotcp/modules/pico_icmp4.c b/net/picotcp/modules/pico_icmp4.c
new file mode 100644
index 0000000..da3d89c
--- /dev/null
+++ b/net/picotcp/modules/pico_icmp4.c
@@ -0,0 +1,395 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   .
+
+   Authors: Daniele Lacamera
+ *********************************************************************/
+
+
+#include "pico_icmp4.h"
+#include "pico_config.h"
+#include "pico_ipv4.h"
+#include "pico_eth.h"
+#include "pico_device.h"
+#include "pico_stack.h"
+#include "pico_tree.h"
+
+/* Queues */
+static struct pico_queue icmp_in = {
+    0
+};
+static struct pico_queue icmp_out = {
+    0
+};
+
+
+/* Functions */
+
+static int pico_icmp4_checksum(struct pico_frame *f)
+{
+    struct pico_icmp4_hdr *hdr = (struct pico_icmp4_hdr *) f->transport_hdr;
+    if (!hdr) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+    hdr->crc = 0;
+    hdr->crc = short_be(pico_checksum(hdr, f->transport_len));
+    return 0;
+}
+
+#ifdef PICO_SUPPORT_PING
+static void ping_recv_reply(struct pico_frame *f);
+#endif
+
+static int pico_icmp4_process_in(struct pico_protocol *self, struct pico_frame *f)
+{
+    struct pico_icmp4_hdr *hdr = (struct pico_icmp4_hdr *) f->transport_hdr;
+    static int firstpkt = 1;
+    static uint16_t last_id = 0;
+    static uint16_t last_seq = 0;
+    IGNORE_PARAMETER(self);
+
+    if (hdr->type == PICO_ICMP_ECHO) {
+        hdr->type = PICO_ICMP_ECHOREPLY;
+        /* outgoing frames require a f->len without the ethernet header len */
+        if (f->dev && f->dev->eth)
+            f->len -= PICO_SIZE_ETHHDR;
+
+        if (!firstpkt && (hdr->hun.ih_idseq.idseq_id ==  last_id) && (last_seq == hdr->hun.ih_idseq.idseq_seq)) {
+            /* The network duplicated the echo. Do not reply. */
+            pico_frame_discard(f);
+            return 0;
+        }
+
+        firstpkt = 0;
+        last_id = hdr->hun.ih_idseq.idseq_id;
+        last_seq = hdr->hun.ih_idseq.idseq_seq;
+        pico_icmp4_checksum(f);
+        pico_ipv4_rebound(f);
+    } else if (hdr->type == PICO_ICMP_UNREACH) {
+        f->net_hdr = f->transport_hdr + PICO_ICMPHDR_UN_SIZE;
+        pico_ipv4_unreachable(f, hdr->code);
+    } else if (hdr->type == PICO_ICMP_ECHOREPLY) {
+#ifdef PICO_SUPPORT_PING
+        ping_recv_reply(f);
+#endif
+        pico_frame_discard(f);
+    } else {
+        pico_frame_discard(f);
+    }
+
+    return 0;
+}
+
+static int pico_icmp4_process_out(struct pico_protocol *self, struct pico_frame *f)
+{
+    IGNORE_PARAMETER(self);
+    IGNORE_PARAMETER(f);
+    dbg("Called %s\n", __FUNCTION__);
+    return 0;
+}
+
+/* Interface: protocol definition */
+struct pico_protocol pico_proto_icmp4 = {
+    .name = "icmp4",
+    .proto_number = PICO_PROTO_ICMP4,
+    .layer = PICO_LAYER_TRANSPORT,
+    .process_in = pico_icmp4_process_in,
+    .process_out = pico_icmp4_process_out,
+    .q_in = &icmp_in,
+    .q_out = &icmp_out,
+};
+
+static int pico_icmp4_notify(struct pico_frame *f, uint8_t type, uint8_t code)
+{
+    struct pico_frame *reply;
+    struct pico_icmp4_hdr *hdr;
+    struct pico_ipv4_hdr *info;
+    uint16_t f_tot_len;
+
+    f_tot_len = short_be(((struct pico_ipv4_hdr *)f->net_hdr)->len);
+
+    if (f_tot_len < (sizeof(struct pico_ipv4_hdr)))
+        return -1;
+
+    /* Truncate tot len to be at most 8 bytes + iphdr */
+    if (f_tot_len > (sizeof(struct pico_ipv4_hdr) + 8u)) {
+        f_tot_len = (sizeof(struct pico_ipv4_hdr) + 8u);
+    }
+
+    if (f == NULL) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+    reply = pico_proto_ipv4.alloc(&pico_proto_ipv4, (uint16_t) (f_tot_len + PICO_ICMPHDR_UN_SIZE));
+    info = (struct pico_ipv4_hdr*)(f->net_hdr);
+    hdr = (struct pico_icmp4_hdr *) reply->transport_hdr;
+    hdr->type = type;
+    hdr->code = code;
+    hdr->hun.ih_pmtu.ipm_nmtu = short_be(1500);
+    hdr->hun.ih_pmtu.ipm_void = 0;
+    reply->transport_len = (uint16_t)(f_tot_len +  PICO_ICMPHDR_UN_SIZE);
+    reply->payload = reply->transport_hdr + PICO_ICMPHDR_UN_SIZE;
+    memcpy(reply->payload, f->net_hdr, f_tot_len);
+    pico_icmp4_checksum(reply);
+    pico_ipv4_frame_push(reply, &info->src, PICO_PROTO_ICMP4);
+    return 0;
+}
+
+int pico_icmp4_port_unreachable(struct pico_frame *f)
+{
+    /*Parameter check executed in pico_icmp4_notify*/
+    return pico_icmp4_notify(f, PICO_ICMP_UNREACH, PICO_ICMP_UNREACH_PORT);
+}
+
+int pico_icmp4_proto_unreachable(struct pico_frame *f)
+{
+    /*Parameter check executed in pico_icmp4_notify*/
+    return pico_icmp4_notify(f, PICO_ICMP_UNREACH, PICO_ICMP_UNREACH_PROTOCOL);
+}
+
+int pico_icmp4_dest_unreachable(struct pico_frame *f)
+{
+    /*Parameter check executed in pico_icmp4_notify*/
+    return pico_icmp4_notify(f, PICO_ICMP_UNREACH, PICO_ICMP_UNREACH_HOST);
+}
+
+int pico_icmp4_ttl_expired(struct pico_frame *f)
+{
+    /*Parameter check executed in pico_icmp4_notify*/
+    return pico_icmp4_notify(f, PICO_ICMP_TIME_EXCEEDED, PICO_ICMP_TIMXCEED_INTRANS);
+}
+
+MOCKABLE int pico_icmp4_frag_expired(struct pico_frame *f)
+{
+    /*Parameter check executed in pico_icmp4_notify*/
+    return pico_icmp4_notify(f, PICO_ICMP_TIME_EXCEEDED, PICO_ICMP_TIMXCEED_REASS);
+}
+
+int pico_icmp4_mtu_exceeded(struct pico_frame *f)
+{
+    /*Parameter check executed in pico_icmp4_notify*/
+    return pico_icmp4_notify(f, PICO_ICMP_UNREACH, PICO_ICMP_UNREACH_NEEDFRAG);
+}
+
+int pico_icmp4_packet_filtered(struct pico_frame *f)
+{
+    /*Parameter check executed in pico_icmp4_notify*/
+    /*Packet Filtered: type 3, code 13 (Communication Administratively Prohibited)*/
+    return pico_icmp4_notify(f, PICO_ICMP_UNREACH, PICO_ICMP_UNREACH_FILTER_PROHIB);
+}
+
+int pico_icmp4_param_problem(struct pico_frame *f, uint8_t code)
+{
+    return pico_icmp4_notify(f, PICO_ICMP_PARAMPROB, code);
+}
+
+/***********************/
+/* Ping implementation */
+/***********************/
+/***********************/
+/***********************/
+/***********************/
+
+
+#ifdef PICO_SUPPORT_PING
+
+
+struct pico_icmp4_ping_cookie
+{
+    struct pico_ip4 dst;
+    uint16_t err;
+    uint16_t id;
+    uint16_t seq;
+    uint16_t size;
+    int count;
+    pico_time timestamp;
+    int interval;
+    int timeout;
+    void (*cb)(struct pico_icmp4_stats*);
+};
+
+static int cookie_compare(void *ka, void *kb)
+{
+    struct pico_icmp4_ping_cookie *a = ka, *b = kb;
+    if (a->id < b->id)
+        return -1;
+
+    if (a->id > b->id)
+        return 1;
+
+    return (a->seq - b->seq);
+}
+
+PICO_TREE_DECLARE(Pings, cookie_compare);
+
+static int8_t pico_icmp4_send_echo(struct pico_icmp4_ping_cookie *cookie)
+{
+    struct pico_frame *echo = pico_proto_ipv4.alloc(&pico_proto_ipv4, (uint16_t)(PICO_ICMPHDR_UN_SIZE + cookie->size));
+    struct pico_icmp4_hdr *hdr;
+    if (!echo) {
+        return -1;
+    }
+
+    hdr = (struct pico_icmp4_hdr *) echo->transport_hdr;
+
+    hdr->type = PICO_ICMP_ECHO;
+    hdr->code = 0;
+    hdr->hun.ih_idseq.idseq_id = short_be(cookie->id);
+    hdr->hun.ih_idseq.idseq_seq = short_be(cookie->seq);
+    echo->transport_len = (uint16_t)(PICO_ICMPHDR_UN_SIZE + cookie->size);
+    echo->payload = echo->transport_hdr + PICO_ICMPHDR_UN_SIZE;
+    echo->payload_len = cookie->size;
+    /* XXX: Fill payload */
+    pico_icmp4_checksum(echo);
+    pico_ipv4_frame_push(echo, &cookie->dst, PICO_PROTO_ICMP4);
+    return 0;
+}
+
+
+static void ping_timeout(pico_time now, void *arg)
+{
+    struct pico_icmp4_ping_cookie *cookie = (struct pico_icmp4_ping_cookie *)arg;
+    IGNORE_PARAMETER(now);
+
+    if(pico_tree_findKey(&Pings, cookie)) {
+        if (cookie->err == PICO_PING_ERR_PENDING) {
+            struct pico_icmp4_stats stats;
+            stats.dst = cookie->dst;
+            stats.seq = cookie->seq;
+            stats.time = 0;
+            stats.size = cookie->size;
+            stats.err = PICO_PING_ERR_TIMEOUT;
+            dbg(" ---- Ping timeout!!!\n");
+            cookie->cb(&stats);
+        }
+
+        pico_tree_delete(&Pings, cookie);
+        PICO_FREE(cookie);
+    }
+}
+
+static void next_ping(pico_time now, void *arg);
+static inline void send_ping(struct pico_icmp4_ping_cookie *cookie)
+{
+    pico_icmp4_send_echo(cookie);
+    cookie->timestamp = pico_tick;
+    pico_timer_add((uint32_t)cookie->timeout, ping_timeout, cookie);
+    if (cookie->seq < (uint16_t)cookie->count)
+        pico_timer_add((uint32_t)cookie->interval, next_ping, cookie);
+}
+
+static void next_ping(pico_time now, void *arg)
+{
+    struct pico_icmp4_ping_cookie *newcookie, *cookie = (struct pico_icmp4_ping_cookie *)arg;
+    IGNORE_PARAMETER(now);
+
+    if(pico_tree_findKey(&Pings, cookie)) {
+        if (cookie->err == PICO_PING_ERR_ABORTED)
+            return;
+
+        if (cookie->seq < (uint16_t)cookie->count) {
+            newcookie = PICO_ZALLOC(sizeof(struct pico_icmp4_ping_cookie));
+            if (!newcookie)
+                return;
+
+            memcpy(newcookie, cookie, sizeof(struct pico_icmp4_ping_cookie));
+            newcookie->seq++;
+
+            pico_tree_insert(&Pings, newcookie);
+            send_ping(newcookie);
+        }
+    }
+}
+
+
+static void ping_recv_reply(struct pico_frame *f)
+{
+    struct pico_icmp4_ping_cookie test, *cookie;
+    struct pico_icmp4_hdr *hdr = (struct pico_icmp4_hdr *) f->transport_hdr;
+    test.id  = short_be(hdr->hun.ih_idseq.idseq_id );
+    test.seq = short_be(hdr->hun.ih_idseq.idseq_seq);
+
+    cookie = pico_tree_findKey(&Pings, &test);
+    if (cookie) {
+        struct pico_icmp4_stats stats;
+        if (cookie->err == PICO_PING_ERR_ABORTED)
+            return;
+
+        cookie->err = PICO_PING_ERR_REPLIED;
+        stats.dst = ((struct pico_ipv4_hdr *)f->net_hdr)->src;
+        stats.seq = cookie->seq;
+        stats.size = cookie->size;
+        stats.time = pico_tick - cookie->timestamp;
+        stats.err = cookie->err;
+        stats.ttl = ((struct pico_ipv4_hdr *)f->net_hdr)->ttl;
+        if(cookie->cb != NULL)
+            cookie->cb(&stats);
+    } else {
+        dbg("Reply for seq=%d, not found.\n", test.seq);
+    }
+}
+
+int pico_icmp4_ping(char *dst, int count, int interval, int timeout, int size, void (*cb)(struct pico_icmp4_stats *))
+{
+    static uint16_t next_id = 0x91c0;
+    struct pico_icmp4_ping_cookie *cookie;
+
+    if((dst == NULL) || (interval == 0) || (timeout == 0) || (count == 0)) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+    cookie = PICO_ZALLOC(sizeof(struct pico_icmp4_ping_cookie));
+    if (!cookie) {
+        pico_err = PICO_ERR_ENOMEM;
+        return -1;
+    }
+
+    if (pico_string_to_ipv4(dst, (uint32_t *)&cookie->dst.addr) < 0) {
+        pico_err = PICO_ERR_EINVAL;
+        PICO_FREE(cookie);
+        return -1;
+    }
+
+    cookie->seq = 1;
+    cookie->id = next_id++;
+    cookie->err = PICO_PING_ERR_PENDING;
+    cookie->size = (uint16_t)size;
+    cookie->interval = interval;
+    cookie->timeout = timeout;
+    cookie->cb = cb;
+    cookie->count = count;
+
+    pico_tree_insert(&Pings, cookie);
+    send_ping(cookie);
+
+    return cookie->id;
+
+}
+
+int pico_icmp4_ping_abort(int id)
+{
+    struct pico_tree_node *node;
+    int found = 0;
+    pico_tree_foreach(node, &Pings)
+    {
+        struct pico_icmp4_ping_cookie *ck =
+            (struct pico_icmp4_ping_cookie *) node->keyValue;
+        if (ck->id == (uint16_t)id) {
+            ck->err = PICO_PING_ERR_ABORTED;
+            found++;
+        }
+    }
+    if (found > 0)
+        return 0; /* OK if at least one pending ping has been canceled */
+
+    pico_err = PICO_ERR_ENOENT;
+    return -1;
+}
+
+#endif
diff --git a/net/picotcp/modules/pico_icmp4.h b/net/picotcp/modules/pico_icmp4.h
new file mode 100644
index 0000000..45f0a62
--- /dev/null
+++ b/net/picotcp/modules/pico_icmp4.h
@@ -0,0 +1,162 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   .
+
+ *********************************************************************/
+#ifndef INCLUDE_PICO_ICMP4
+#define INCLUDE_PICO_ICMP4
+#include "pico_defines.h"
+#include "pico_addressing.h"
+#include "pico_protocol.h"
+
+
+extern struct pico_protocol pico_proto_icmp4;
+
+PACKED_STRUCT_DEF pico_icmp4_hdr {
+    uint8_t type;
+    uint8_t code;
+    uint16_t crc;
+
+    /* hun */
+    PACKED_UNION_DEF hun_u {
+        uint8_t ih_pptr;
+        struct pico_ip4 ih_gwaddr;
+        PEDANTIC_STRUCT_DEF ih_idseq_s {
+            uint16_t idseq_id;
+            uint16_t idseq_seq;
+        } ih_idseq;
+        uint32_t ih_void;
+        PEDANTIC_STRUCT_DEF ih_pmtu_s {
+            uint16_t ipm_void;
+            uint16_t ipm_nmtu;
+        } ih_pmtu;
+        PEDANTIC_STRUCT_DEF ih_rta_s {
+            uint8_t rta_numgw;
+            uint8_t rta_wpa;
+            uint16_t rta_lifetime;
+        } ih_rta;
+    } hun;
+
+    /* dun */
+    PACKED_UNION_DEF dun_u {
+        PEDANTIC_STRUCT_DEF id_ts_s {
+            uint32_t ts_otime;
+            uint32_t ts_rtime;
+            uint32_t ts_ttime;
+        } id_ts;
+        PEDANTIC_STRUCT_DEF id_ip_s {
+            uint32_t ip_options;
+            uint32_t ip_data_hi;
+            uint32_t ip_data_lo;
+        } id_ip;
+        PEDANTIC_STRUCT_DEF id_ra_s {
+            uint32_t ira_addr;
+            uint32_t ira_pref;
+        } id_ra;
+        uint32_t id_mask;
+        uint8_t id_data[1];
+    } dun;
+};
+
+#define PICO_ICMPHDR_DRY_SIZE  4
+#define PICO_ICMPHDR_UN_SIZE  8u
+
+#define PICO_ICMP_ECHOREPLY    0
+#define PICO_ICMP_DEST_UNREACH 3
+#define PICO_ICMP_SOURCE_QUENCH  4
+#define PICO_ICMP_REDIRECT   5
+#define PICO_ICMP_ECHO   8
+#define PICO_ICMP_TIME_EXCEEDED  11
+#define PICO_ICMP_PARAMETERPROB  12
+#define PICO_ICMP_TIMESTAMP    13
+#define PICO_ICMP_TIMESTAMPREPLY 14
+#define PICO_ICMP_INFO_REQUEST 15
+#define PICO_ICMP_INFO_REPLY   16
+#define PICO_ICMP_ADDRESS    17
+#define PICO_ICMP_ADDRESSREPLY 18
+
+
+#define  PICO_ICMP_UNREACH    3
+#define  PICO_ICMP_SOURCEQUENCH  4
+#define  PICO_ICMP_ROUTERADVERT  9
+#define  PICO_ICMP_ROUTERSOLICIT  10
+#define  PICO_ICMP_TIMXCEED    11
+#define  PICO_ICMP_PARAMPROB    12
+#define  PICO_ICMP_TSTAMP    13
+#define  PICO_ICMP_TSTAMPREPLY  14
+#define  PICO_ICMP_IREQ    15
+#define  PICO_ICMP_IREQREPLY    16
+#define  PICO_ICMP_MASKREQ    17
+#define  PICO_ICMP_MASKREPLY    18
+
+#define  PICO_ICMP_MAXTYPE    18
+
+
+#define  PICO_ICMP_UNREACH_NET          0
+#define  PICO_ICMP_UNREACH_HOST          1
+#define  PICO_ICMP_UNREACH_PROTOCOL          2
+#define  PICO_ICMP_UNREACH_PORT          3
+#define  PICO_ICMP_UNREACH_NEEDFRAG          4
+#define  PICO_ICMP_UNREACH_SRCFAIL          5
+#define  PICO_ICMP_UNREACH_NET_UNKNOWN        6
+#define  PICO_ICMP_UNREACH_HOST_UNKNOWN       7
+#define  PICO_ICMP_UNREACH_ISOLATED          8
+#define  PICO_ICMP_UNREACH_NET_PROHIB          9
+#define  PICO_ICMP_UNREACH_HOST_PROHIB        10
+#define  PICO_ICMP_UNREACH_TOSNET          11
+#define  PICO_ICMP_UNREACH_TOSHOST          12
+#define  PICO_ICMP_UNREACH_FILTER_PROHIB      13
+#define  PICO_ICMP_UNREACH_HOST_PRECEDENCE    14
+#define  PICO_ICMP_UNREACH_PRECEDENCE_CUTOFF  15
+
+
+#define  PICO_ICMP_REDIRECT_NET  0
+#define  PICO_ICMP_REDIRECT_HOST  1
+#define  PICO_ICMP_REDIRECT_TOSNET  2
+#define  PICO_ICMP_REDIRECT_TOSHOST  3
+
+
+#define  PICO_ICMP_TIMXCEED_INTRANS  0
+#define  PICO_ICMP_TIMXCEED_REASS  1
+
+
+#define  PICO_ICMP_PARAMPROB_OPTABSENT 1
+
+#define PICO_SIZE_ICMP4HDR ((sizeof(struct pico_icmp4_hdr)))
+
+struct pico_icmp4_stats
+{
+    struct pico_ip4 dst;
+    unsigned long size;
+    unsigned long seq;
+    pico_time time;
+    unsigned long ttl;
+    int err;
+};
+
+int pico_icmp4_port_unreachable(struct pico_frame *f);
+int pico_icmp4_proto_unreachable(struct pico_frame *f);
+int pico_icmp4_dest_unreachable(struct pico_frame *f);
+int pico_icmp4_mtu_exceeded(struct pico_frame *f);
+int pico_icmp4_ttl_expired(struct pico_frame *f);
+int pico_icmp4_frag_expired(struct pico_frame *f);
+int pico_icmp4_ping(char *dst, int count, int interval, int timeout, int size, void (*cb)(struct pico_icmp4_stats *));
+int pico_icmp4_ping_abort(int id);
+
+#ifdef PICO_SUPPORT_ICMP4
+int pico_icmp4_packet_filtered(struct pico_frame *f);
+int pico_icmp4_param_problem(struct pico_frame *f, uint8_t code);
+#else
+# define pico_icmp4_packet_filtered(f) (-1)
+# define pico_icmp4_param_problem(f, c) (-1)
+#endif /* PICO_SUPPORT_ICMP4 */
+
+#define PICO_PING_ERR_REPLIED 0
+#define PICO_PING_ERR_TIMEOUT 1
+#define PICO_PING_ERR_UNREACH 2
+#define PICO_PING_ERR_ABORTED 3
+#define PICO_PING_ERR_PENDING 0xFFFF
+
+#endif
diff --git a/net/picotcp/modules/pico_icmp6.h b/net/picotcp/modules/pico_icmp6.h
new file mode 100644
index 0000000..90e8223
--- /dev/null
+++ b/net/picotcp/modules/pico_icmp6.h
@@ -0,0 +1,259 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   .
+
+ *********************************************************************/
+#ifndef _INCLUDE_PICO_ICMP6
+#define _INCLUDE_PICO_ICMP6
+#include "pico_addressing.h"
+#include "pico_protocol.h"
+
+/* ICMP header sizes */
+#define PICO_ICMP6HDR_DRY_SIZE          4
+#define PICO_ICMP6HDR_ECHO_REQUEST_SIZE 8
+#define PICO_ICMP6HDR_DEST_UNREACH_SIZE 8
+#define PICO_ICMP6HDR_TIME_XCEEDED_SIZE 8
+#define PICO_ICMP6HDR_PARAM_PROBLEM_SIZE 8
+#define PICO_ICMP6HDR_NEIGH_SOL_SIZE    24
+#define PICO_ICMP6HDR_NEIGH_ADV_SIZE    24
+#define PICO_ICMP6HDR_ROUTER_SOL_SIZE   8
+#define PICO_ICMP6HDR_ROUTER_ADV_SIZE   16
+#define PICO_ICMP6HDR_REDIRECT_SIZE     40
+
+/* ICMP types */
+#define PICO_ICMP6_DEST_UNREACH        1
+#define PICO_ICMP6_PKT_TOO_BIG         2
+#define PICO_ICMP6_TIME_EXCEEDED       3
+#define PICO_ICMP6_PARAM_PROBLEM       4
+#define PICO_ICMP6_ECHO_REQUEST        128
+#define PICO_ICMP6_ECHO_REPLY          129
+#define PICO_ICMP6_ROUTER_SOL          133
+#define PICO_ICMP6_ROUTER_ADV          134
+#define PICO_ICMP6_NEIGH_SOL           135
+#define PICO_ICMP6_NEIGH_ADV           136
+#define PICO_ICMP6_REDIRECT            137
+
+/* destination unreachable codes */
+#define PICO_ICMP6_UNREACH_NOROUTE     0
+#define PICO_ICMP6_UNREACH_ADMIN       1
+#define PICO_ICMP6_UNREACH_SRCSCOPE    2
+#define PICO_ICMP6_UNREACH_ADDR        3
+#define PICO_ICMP6_UNREACH_PORT        4
+#define PICO_ICMP6_UNREACH_SRCFILTER   5
+#define PICO_ICMP6_UNREACH_REJROUTE    6
+
+/* time exceeded codes */
+#define PICO_ICMP6_TIMXCEED_INTRANS    0
+#define PICO_ICMP6_TIMXCEED_REASS      1
+
+/* parameter problem codes */
+#define PICO_ICMP6_PARAMPROB_HDRFIELD  0
+#define PICO_ICMP6_PARAMPROB_NXTHDR    1
+#define PICO_ICMP6_PARAMPROB_IPV6OPT   2
+
+/* ping error codes */
+#define PICO_PING6_ERR_REPLIED         0
+#define PICO_PING6_ERR_TIMEOUT         1
+#define PICO_PING6_ERR_UNREACH         2
+#define PICO_PING6_ERR_ABORTED         3
+#define PICO_PING6_ERR_PENDING         0xFFFF
+
+/* ND configuration */
+#define PICO_ND_MAX_FRAMES_QUEUED      4 /* max frames queued while awaiting address resolution */
+
+/* ND RFC constants */
+#define PICO_ND_MAX_SOLICIT            3
+#define PICO_ND_MAX_NEIGHBOR_ADVERT    3
+#define PICO_ND_DELAY_INCOMPLETE       1000 /* msec */
+#define PICO_ND_DELAY_FIRST_PROBE_TIME 5000 /* msec */
+
+/* neighbor discovery options */
+#define PICO_ND_OPT_LLADDR_SRC         1
+#define PICO_ND_OPT_LLADDR_TGT         2
+#define PICO_ND_OPT_PREFIX             3
+#define PICO_ND_OPT_REDIRECT           4
+#define PICO_ND_OPT_MTU                5
+#define PICO_ND_OPT_RDNSS             25 /* RFC 5006 */
+
+/* ND advertisement flags */
+#define PICO_ND_ROUTER             0x80000000
+#define PICO_ND_SOLICITED          0x40000000
+#define PICO_ND_OVERRIDE           0x20000000
+#define IS_ROUTER(x) (long_be(x->msg.info.neigh_adv.rsor) & (PICO_ND_ROUTER))           /* router flag set? */
+#define IS_SOLICITED(x) (long_be(x->msg.info.neigh_adv.rsor) & (PICO_ND_SOLICITED))     /* solicited flag set? */
+#define IS_OVERRIDE(x) (long_be(x->msg.info.neigh_adv.rsor) & (PICO_ND_OVERRIDE))   /* override flag set? */
+
+#define PICO_ND_PREFIX_LIFETIME_INF    0xFFFFFFFFu
+/* #define PICO_ND_DESTINATION_LRU_TIME   600000u / * msecs (10min) * / */
+
+/* custom defines */
+#define PICO_ICMP6_ND_UNICAST          0
+#define PICO_ICMP6_ND_ANYCAST          1
+#define PICO_ICMP6_ND_SOLICITED        2
+#define PICO_ICMP6_ND_DAD              3
+
+#define PICO_ICMP6_MAX_RTR_SOL_DELAY   1000
+
+#define PICO_SIZE_ICMP6HDR ((sizeof(struct pico_icmp6_hdr)))
+#define PICO_ICMP6_OPT_LLADDR_SIZE (8)
+
+extern struct pico_protocol pico_proto_icmp6;
+
+PACKED_STRUCT_DEF pico_icmp6_hdr {
+    uint8_t type;
+    uint8_t code;
+    uint16_t crc;
+
+    PACKED_UNION_DEF icmp6_msg_u {
+        /* error messages */
+        PACKED_UNION_DEF icmp6_err_u {
+            PEDANTIC_STRUCT_DEF dest_unreach_s {
+                uint32_t unused;
+                uint8_t data[0];
+            } dest_unreach;
+            PEDANTIC_STRUCT_DEF pkt_too_big_s {
+                uint32_t mtu;
+                uint8_t data[0];
+            } pkt_too_big;
+            PEDANTIC_STRUCT_DEF time_exceeded_s {
+                uint32_t unused;
+                uint8_t data[0];
+            } time_exceeded;
+            PEDANTIC_STRUCT_DEF param_problem_s {
+                uint32_t ptr;
+                uint8_t data[0];
+            } param_problem;
+        } err;
+
+        /* informational messages */
+        PACKED_UNION_DEF icmp6_info_u {
+            PEDANTIC_STRUCT_DEF echo_request_s {
+                uint16_t id;
+                uint16_t seq;
+                uint8_t data[0];
+            } echo_request;
+            PEDANTIC_STRUCT_DEF echo_reply_s {
+                uint16_t id;
+                uint16_t seq;
+                uint8_t data[0];
+            } echo_reply;
+            PEDANTIC_STRUCT_DEF router_sol_s {
+                uint32_t unused;
+                uint8_t options[0];
+            } router_sol;
+            PEDANTIC_STRUCT_DEF router_adv_s {
+                uint8_t hop;
+                uint8_t mor;
+                uint16_t life_time;
+                uint32_t reachable_time;
+                uint32_t retrans_time;
+                uint8_t options[0];
+            } router_adv;
+            PEDANTIC_STRUCT_DEF neigh_sol_s {
+                uint32_t unused;
+                struct pico_ip6 target;
+                uint8_t options[0];
+            } neigh_sol;
+            PEDANTIC_STRUCT_DEF neigh_adv_s {
+                uint32_t rsor;
+                struct pico_ip6 target;
+                uint8_t options[0];
+            } neigh_adv;
+            PEDANTIC_STRUCT_DEF redirect_s {
+                uint32_t reserved;
+                struct pico_ip6 target;
+                struct pico_ip6 dest;
+                uint8_t options[0];
+            } redirect;
+        } info;
+    } msg;
+};
+
+PACKED_STRUCT_DEF pico_icmp6_opt_lladdr
+{
+    uint8_t type;
+    uint8_t len;
+    PACKED_UNION_DEF icmp6_opt_hw_addr_u {
+        struct pico_eth mac;
+    } addr;
+};
+
+PACKED_STRUCT_DEF pico_icmp6_opt_prefix
+{
+    uint8_t type;
+    uint8_t len;
+    uint8_t prefix_len;
+    uint8_t res : 6;
+    uint8_t aac : 1;
+    uint8_t onlink : 1;
+    uint32_t val_lifetime;
+    uint32_t pref_lifetime;
+    uint32_t reserved;
+    struct pico_ip6 prefix;
+};
+
+PACKED_STRUCT_DEF pico_icmp6_opt_mtu
+{
+    uint8_t type;
+    uint8_t len;
+    uint16_t res;
+    uint32_t mtu;
+};
+
+PACKED_STRUCT_DEF pico_icmp6_opt_redirect
+{
+    uint8_t type;
+    uint8_t len;
+    uint16_t res0;
+    uint32_t res1;
+    uint8_t data[0];
+};
+
+PACKED_STRUCT_DEF pico_icmp6_opt_rdnss
+{
+    uint8_t type;
+    uint8_t len;
+    uint16_t res0;
+    uint32_t lifetime;
+    struct pico_ip6 addr[];
+};
+
+PACKED_STRUCT_DEF pico_icmp6_opt_na
+{
+    uint8_t type;
+    uint8_t len;
+    uint8_t options[0];
+};
+
+struct pico_icmp6_stats
+{
+    unsigned long size;
+    unsigned long seq;
+    pico_time time;
+    unsigned long ttl;
+    int err;
+    struct pico_ip6 dst;
+};
+
+int pico_icmp6_ping(char *dst, int count, int interval, int timeout, int size, void (*cb)(struct pico_icmp6_stats *), struct pico_device *dev);
+int pico_icmp6_ping_abort(int id);
+
+int pico_icmp6_neighbor_solicitation(struct pico_device *dev, struct pico_ip6 *dst, uint8_t type);
+int pico_icmp6_neighbor_advertisement(struct pico_frame *f, struct pico_ip6 *target);
+int pico_icmp6_router_solicitation(struct pico_device *dev, struct pico_ip6 *src);
+
+int pico_icmp6_port_unreachable(struct pico_frame *f);
+int pico_icmp6_proto_unreachable(struct pico_frame *f);
+int pico_icmp6_dest_unreachable(struct pico_frame *f);
+int pico_icmp6_ttl_expired(struct pico_frame *f);
+int pico_icmp6_packet_filtered(struct pico_frame *f);
+int pico_icmp6_parameter_problem(struct pico_frame *f, uint8_t problem, uint32_t ptr);
+int pico_icmp6_pkt_too_big(struct pico_frame *f);
+int pico_icmp6_frag_expired(struct pico_frame *f);
+
+uint16_t pico_icmp6_checksum(struct pico_frame *f);
+int pico_icmp6_router_advertisement(struct pico_device *dev, struct pico_ip6 *dst);
+
+#endif
diff --git a/net/picotcp/modules/pico_igmp.h b/net/picotcp/modules/pico_igmp.h
new file mode 100644
index 0000000..03d6102
--- /dev/null
+++ b/net/picotcp/modules/pico_igmp.h
@@ -0,0 +1,26 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   .
+
+   Authors: Kristof Roelants, Simon Maes, Brecht Van Cauwenberghe
+ *********************************************************************/
+
+#ifndef INCLUDE_PICO_IGMP
+#define INCLUDE_PICO_IGMP
+
+#define PICO_IGMPV1               1
+#define PICO_IGMPV2               2
+#define PICO_IGMPV3               3
+
+#define PICO_IGMP_STATE_CREATE    1
+#define PICO_IGMP_STATE_UPDATE    2
+#define PICO_IGMP_STATE_DELETE    3
+
+#define PICO_IGMP_QUERY_INTERVAL  125
+
+extern struct pico_protocol pico_proto_igmp;
+
+int pico_igmp_state_change(struct pico_ip4 *mcast_link, struct pico_ip4 *mcast_group, uint8_t filter_mode, struct pico_tree *MCASTFilter, uint8_t state);
+#endif /* _INCLUDE_PICO_IGMP */
diff --git a/net/picotcp/modules/pico_ipfilter.h b/net/picotcp/modules/pico_ipfilter.h
new file mode 100644
index 0000000..fb92e67
--- /dev/null
+++ b/net/picotcp/modules/pico_ipfilter.h
@@ -0,0 +1,29 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   Authors: Simon Maes
+ *********************************************************************/
+#ifndef INCLUDE_PICO_IPFILTER
+#define INCLUDE_PICO_IPFILTER
+
+#include "pico_device.h"
+
+enum filter_action {
+    FILTER_PRIORITY = 0,
+    FILTER_REJECT,
+    FILTER_DROP,
+    FILTER_COUNT
+};
+
+uint32_t pico_ipv4_filter_add(struct pico_device *dev, uint8_t proto,
+                              struct pico_ip4 *out_addr, struct pico_ip4 *out_addr_netmask, struct pico_ip4 *in_addr,
+                              struct pico_ip4 *in_addr_netmask, uint16_t out_port, uint16_t in_port,
+                              int8_t priority, uint8_t tos, enum filter_action action);
+
+int pico_ipv4_filter_del(uint32_t filter_id);
+
+int ipfilter(struct pico_frame *f);
+
+#endif /* _INCLUDE_PICO_IPFILTER */
+
diff --git a/net/picotcp/modules/pico_ipv4.c b/net/picotcp/modules/pico_ipv4.c
new file mode 100644
index 0000000..f94d6e6
--- /dev/null
+++ b/net/picotcp/modules/pico_ipv4.c
@@ -0,0 +1,1574 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   Authors: Daniele Lacamera, Markian Yskout
+ *********************************************************************/
+
+
+#include "pico_config.h"
+#include "pico_ipfilter.h"
+#include "pico_ipv4.h"
+#include "pico_icmp4.h"
+#include "pico_stack.h"
+#include "pico_eth.h"
+#include "pico_udp.h"
+#include "pico_tcp.h"
+#include "pico_socket.h"
+#include "pico_device.h"
+#include "pico_nat.h"
+#include "pico_igmp.h"
+#include "pico_tree.h"
+#include "pico_aodv.h"
+#include "pico_socket_multicast.h"
+#include "pico_fragments.h"
+
+#ifdef PICO_SUPPORT_IPV4
+
+#ifdef PICO_SUPPORT_MCAST
+# define ip_mcast_dbg(...) do {} while(0) /* so_mcast_dbg in pico_socket.c */
+/* #define ip_mcast_dbg dbg */
+# define PICO_MCAST_ALL_HOSTS long_be(0xE0000001) /* 224.0.0.1 */
+/* Default network interface for multicast transmission */
+static struct pico_ipv4_link *mcast_default_link = NULL;
+#endif
+#ifdef PICO_SUPPORT_IPFRAG
+/* # define reassembly_dbg dbg */
+# define reassembly_dbg(...) do {} while(0)
+#endif
+
+/* Queues */
+static struct pico_queue in = {
+    0
+};
+static struct pico_queue out = {
+    0
+};
+
+/* Functions */
+static int ipv4_route_compare(void *ka, void *kb);
+static struct pico_frame *pico_ipv4_alloc(struct pico_protocol *self, uint16_t size);
+
+
+int pico_ipv4_compare(struct pico_ip4 *a, struct pico_ip4 *b)
+{
+    if (a->addr < b->addr)
+        return -1;
+
+    if (a->addr > b->addr)
+        return 1;
+
+    return 0;
+}
+
+int pico_ipv4_to_string(char *ipbuf, const uint32_t ip)
+{
+    const unsigned char *addr = (const unsigned char *) &ip;
+    int i;
+
+    if (!ipbuf) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+    for(i = 0; i < 4; i++)
+    {
+        if (addr[i] > 99) {
+            *ipbuf++ = (char)('0' + (addr[i] / 100));
+            *ipbuf++ = (char)('0' + ((addr[i] % 100) / 10));
+            *ipbuf++ = (char)('0' + ((addr[i] % 100) % 10));
+        } else if (addr[i] > 9) {
+            *ipbuf++ = (char)('0' + (addr[i] / 10));
+            *ipbuf++ = (char)('0' + (addr[i] % 10));
+        } else {
+            *ipbuf++ = (char)('0' + addr[i]);
+        }
+
+        if (i < 3)
+            *ipbuf++ = '.';
+    }
+    *ipbuf = '\0';
+
+    return 0;
+}
+
+static int pico_string_check_null_args(const char *ipstr, uint32_t *ip)
+{
+
+    if (!ipstr || !ip) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+    return 0;
+
+}
+
+int pico_string_to_ipv4(const char *ipstr, uint32_t *ip)
+{
+    unsigned char buf[PICO_SIZE_IP4] = {
+        0
+    };
+    int cnt = 0;
+    char p;
+
+    if (pico_string_check_null_args(ipstr, ip) < 0)
+        return -1;
+
+    while((p = *ipstr++) != 0 && cnt < PICO_SIZE_IP4)
+    {
+        if (pico_is_digit(p)) {
+            buf[cnt] = (uint8_t)((10 * buf[cnt]) + (p - '0'));
+        } else if (p == '.') {
+            cnt++;
+        } else {
+            return -1;
+        }
+    }
+    /* Handle short notation */
+    if (cnt == 1) {
+        buf[3] = buf[1];
+        buf[1] = 0;
+        buf[2] = 0;
+    } else if (cnt == 2) {
+        buf[3] = buf[2];
+        buf[2] = 0;
+    } else if (cnt != 3) {
+        /* String could not be parsed, return error */
+        return -1;
+    }
+
+    *ip = long_from(buf);
+
+    return 0;
+}
+
+int pico_ipv4_valid_netmask(uint32_t mask)
+{
+    int cnt = 0;
+    int end = 0;
+    int i;
+    uint32_t mask_swap = long_be(mask);
+
+    /*
+     * Swap bytes for convenient parsing
+     * e.g. 0x..f8ff will become 0xfff8..
+     * Then, we count the consecutive bits
+     *
+     * */
+
+    for(i = 0; i < 32; i++) {
+        if ((mask_swap << i) & 0x80000000) {
+            if (end) {
+                pico_err = PICO_ERR_EINVAL;
+                return -1;
+            }
+
+            cnt++;
+        } else {
+            end = 1;
+        }
+    }
+    return cnt;
+}
+
+int pico_ipv4_is_unicast(uint32_t address)
+{
+    const unsigned char *addr = (unsigned char *) &address;
+    if ((addr[0] & 0xe0) == 0xe0)
+        return 0; /* multicast */
+
+    return 1;
+}
+
+int pico_ipv4_is_multicast(uint32_t address)
+{
+    const unsigned char *addr = (unsigned char *) &address;
+    if ((addr[0] != 0xff) && ((addr[0] & 0xe0) == 0xe0))
+        return 1; /* multicast */
+
+    return 0;
+}
+
+int pico_ipv4_is_loopback(uint32_t address)
+{
+    const unsigned char *addr = (unsigned char *) &address;
+    if (addr[0] == 0x7f)
+        return 1;
+
+    return 0;
+}
+
+static int pico_ipv4_is_invalid_loopback(uint32_t address, struct pico_device *dev)
+{
+    return pico_ipv4_is_loopback(address) && ((!dev) || strcmp(dev->name, "loop"));
+}
+
+int pico_ipv4_is_valid_src(uint32_t address, struct pico_device *dev)
+{
+    if (pico_ipv4_is_broadcast(address)) {
+        dbg("Source is a broadcast address, discard packet\n");
+        return 0;
+    } else if ( pico_ipv4_is_multicast(address)) {
+        dbg("Source is a multicast address, discard packet\n");
+        return 0;
+    } else if (pico_ipv4_is_invalid_loopback(address, dev)) {
+        dbg("Source is a loopback address, discard packet\n");
+        return 0;
+    } else {
+#ifdef PICO_SUPPORT_AODV
+        union pico_address src;
+        src.ip4.addr = address;
+        pico_aodv_refresh(&src);
+#endif
+        return 1;
+    }
+}
+
+static int pico_ipv4_checksum(struct pico_frame *f)
+{
+    struct pico_ipv4_hdr *hdr = (struct pico_ipv4_hdr *) f->net_hdr;
+    if (!hdr)
+        return -1;
+
+    hdr->crc = 0;
+    hdr->crc = short_be(pico_checksum(hdr, f->net_len));
+    return 0;
+}
+
+
+#ifdef PICO_SUPPORT_CRC
+static inline int pico_ipv4_crc_check(struct pico_frame *f)
+{
+    uint16_t checksum_invalid = 1;
+    struct pico_ipv4_hdr *hdr = (struct pico_ipv4_hdr *) f->net_hdr;
+
+    checksum_invalid = short_be(pico_checksum(hdr, f->net_len));
+    if (checksum_invalid) {
+        dbg("IP: checksum failed!\n");
+        pico_frame_discard(f);
+        return 0;
+    }
+
+    return 1;
+}
+#else
+static inline int pico_ipv4_crc_check(struct pico_frame *f)
+{
+    IGNORE_PARAMETER(f);
+    return 1;
+}
+#endif /* PICO_SUPPORT_CRC */
+
+static int pico_ipv4_forward(struct pico_frame *f);
+#ifdef PICO_SUPPORT_MCAST
+static int pico_ipv4_mcast_filter(struct pico_frame *f);
+#endif
+
+static int ipv4_link_compare(void *ka, void *kb)
+{
+    struct pico_ipv4_link *a = ka, *b = kb;
+    int cmp = pico_ipv4_compare(&a->address, &b->address);
+    if (cmp)
+        return cmp;
+
+    /* zero can be assigned multiple times (e.g. for DHCP) */
+    if (a->dev != NULL && b->dev != NULL && a->address.addr == PICO_IP4_ANY && b->address.addr == PICO_IP4_ANY) {
+        if (a->dev < b->dev)
+            return -1;
+
+        if (a->dev > b->dev)
+            return 1;
+    }
+
+    return 0;
+}
+
+PICO_TREE_DECLARE(Tree_dev_link, ipv4_link_compare);
+
+static int pico_ipv4_process_bcast_in(struct pico_frame *f)
+{
+    struct pico_ipv4_hdr *hdr = (struct pico_ipv4_hdr *) f->net_hdr;
+#ifdef PICO_SUPPORT_UDP
+    if (pico_ipv4_is_broadcast(hdr->dst.addr) && (hdr->proto == PICO_PROTO_UDP)) {
+        /* Receiving UDP broadcast datagram */
+        f->flags |= PICO_FRAME_FLAG_BCAST;
+        pico_enqueue(pico_proto_udp.q_in, f);
+        return 1;
+    }
+
+#endif
+
+#ifdef PICO_SUPPORT_ICMP4
+    if (pico_ipv4_is_broadcast(hdr->dst.addr) && (hdr->proto == PICO_PROTO_ICMP4)) {
+        /* Receiving ICMP4 bcast packet */
+        f->flags |= PICO_FRAME_FLAG_BCAST;
+        pico_enqueue(pico_proto_icmp4.q_in, f);
+        return 1;
+    }
+
+#endif
+    return 0;
+}
+
+static int pico_ipv4_process_mcast_in(struct pico_frame *f)
+{
+    struct pico_ipv4_hdr *hdr = (struct pico_ipv4_hdr *) f->net_hdr;
+    if (pico_ipv4_is_multicast(hdr->dst.addr)) {
+#ifdef PICO_SUPPORT_MCAST
+        /* Receiving UDP multicast datagram TODO set f->flags? */
+        if (hdr->proto == PICO_PROTO_IGMP) {
+            ip_mcast_dbg("MCAST: received IGMP message\n");
+            pico_transport_receive(f, PICO_PROTO_IGMP);
+            return 1;
+        } else if ((pico_ipv4_mcast_filter(f) == 0) && (hdr->proto == PICO_PROTO_UDP)) {
+            pico_enqueue(pico_proto_udp.q_in, f);
+            return 1;
+        }
+
+#endif
+        pico_frame_discard(f);
+        return 1;
+    }
+
+    return 0;
+}
+
+static int pico_ipv4_process_local_unicast_in(struct pico_frame *f)
+{
+    struct pico_ipv4_hdr *hdr = (struct pico_ipv4_hdr *) f->net_hdr;
+    struct pico_ipv4_link test = {
+        .address = {.addr = PICO_IP4_ANY}, .dev = NULL
+    };
+    if (pico_ipv4_link_find(&hdr->dst)) {
+        if (pico_ipv4_nat_inbound(f, &hdr->dst) == 0)
+            pico_enqueue(pico_proto_ipv4.q_in, f); /* dst changed, reprocess */
+        else
+            pico_transport_receive(f, hdr->proto);
+
+        return 1;
+    } else if (pico_tree_findKey(&Tree_dev_link, &test)) {
+#ifdef PICO_SUPPORT_UDP
+        /* address of this device is apparently 0.0.0.0; might be a DHCP packet */
+        /* XXX KRO: is obsolete. Broadcast flag is set on outgoing DHCP messages.
+         * incomming DHCP messages are to be broadcasted. Our current DHCP server
+         * implementation does not take this flag into account yet though ... */
+        pico_enqueue(pico_proto_udp.q_in, f);
+        return 1;
+#endif
+    }
+
+    return 0;
+}
+
+static void pico_ipv4_process_finally_try_forward(struct pico_frame *f)
+{
+    struct pico_ipv4_hdr *hdr = (struct pico_ipv4_hdr *) f->net_hdr;
+    if ((pico_ipv4_is_broadcast(hdr->dst.addr))) {
+        /* don't forward broadcast frame, discard! */
+        pico_frame_discard(f);
+    } else if (pico_ipv4_forward(f) != 0) {
+        pico_frame_discard(f);
+        /* dbg("Forward failed.\n"); */
+    }
+}
+
+
+
+static int pico_ipv4_process_in(struct pico_protocol *self, struct pico_frame *f)
+{
+    uint8_t option_len = 0;
+    int ret = 0;
+    struct pico_ipv4_hdr *hdr = (struct pico_ipv4_hdr *) f->net_hdr;
+    uint16_t max_allowed = (uint16_t) ((int)f->buffer_len - (f->net_hdr - f->buffer) - (int)PICO_SIZE_IP4HDR);
+    uint16_t flag = short_be(hdr->frag);
+
+    (void)self;
+    /* NAT needs transport header information */
+    if (((hdr->vhl) & 0x0F) > 5) {
+        option_len =  (uint8_t)(4 * (((hdr->vhl) & 0x0F) - 5));
+    }
+
+    f->transport_hdr = ((uint8_t *)f->net_hdr) + PICO_SIZE_IP4HDR + option_len;
+    f->transport_len = (uint16_t)(short_be(hdr->len) - PICO_SIZE_IP4HDR - option_len);
+    f->net_len = (uint16_t)(PICO_SIZE_IP4HDR + option_len);
+
+    if (f->transport_len > max_allowed) {
+        pico_frame_discard(f);
+        return 0; /* Packet is discarded due to unfeasible length */
+    }
+
+#ifdef PICO_SUPPORT_IPFILTER
+    if (ipfilter(f)) {
+        /*pico_frame is discarded as result of the filtering*/
+        return 0;
+    }
+
+#endif
+
+
+    /* ret == 1 indicates to continue the function */
+    ret = pico_ipv4_crc_check(f);
+    if (ret < 1)
+        return ret;
+
+    /* Validate source IP address. Discard quietly if invalid */
+    if (!pico_ipv4_is_valid_src(hdr->src.addr, f->dev)) {
+        pico_frame_discard(f);
+        return 0;
+    }
+
+    if (hdr->frag & short_be(PICO_IPV4_EVIL)) {
+        (void)pico_icmp4_param_problem(f, 0);
+        pico_frame_discard(f); /* RFC 3514 */
+        return 0;
+    }
+
+    if ((hdr->vhl & 0x0f) < 5) {
+        /* RFC 791: IHL minimum value is 5 */
+        (void)pico_icmp4_param_problem(f, 0);
+        pico_frame_discard(f);
+        return 0;
+    }
+
+    if ((flag & PICO_IPV4_MOREFRAG) || (flag & PICO_IPV4_FRAG_MASK))
+    {
+#ifdef PICO_SUPPORT_IPFRAG
+        pico_ipv4_process_frag(hdr, f, hdr ? hdr->proto : 0 );
+        /* Frame can be discarded, frag will handle its own copy */
+#endif
+        /* We do not support fragmentation, discard frame quietly */
+        pico_frame_discard(f);
+        return 0;
+    }
+
+    if (pico_ipv4_process_bcast_in(f) > 0)
+        return 0;
+
+    if (pico_ipv4_process_mcast_in(f) > 0)
+        return 0;
+
+    if (pico_ipv4_process_local_unicast_in(f) > 0)
+        return 0;
+
+    pico_ipv4_process_finally_try_forward(f);
+
+    return 0;
+}
+
+PICO_TREE_DECLARE(Routes, ipv4_route_compare);
+
+
+static int pico_ipv4_process_out(struct pico_protocol *self, struct pico_frame *f)
+{
+    IGNORE_PARAMETER(self);
+    f->start = (uint8_t*) f->net_hdr;
+#ifdef PICO_SUPPORT_IPFILTER
+    if (ipfilter(f)) {
+        /*pico_frame is discarded as result of the filtering*/
+        return 0;
+    }
+
+#endif
+    return pico_sendto_dev(f);
+}
+
+
+static struct pico_frame *pico_ipv4_alloc(struct pico_protocol *self, uint16_t size)
+{
+    struct pico_frame *f =  pico_frame_alloc(size + PICO_SIZE_IP4HDR + PICO_SIZE_ETHHDR);
+    IGNORE_PARAMETER(self);
+
+    if (!f)
+        return NULL;
+
+    f->datalink_hdr = f->buffer;
+    f->net_hdr = f->buffer + PICO_SIZE_ETHHDR;
+    f->net_len = PICO_SIZE_IP4HDR;
+    f->transport_hdr = f->net_hdr + PICO_SIZE_IP4HDR;
+    f->transport_len = size;
+    f->len =  size + PICO_SIZE_IP4HDR;
+    return f;
+}
+
+static int pico_ipv4_frame_sock_push(struct pico_protocol *self, struct pico_frame *f);
+
+/* Interface: protocol definition */
+struct pico_protocol pico_proto_ipv4 = {
+    .name = "ipv4",
+    .proto_number = PICO_PROTO_IPV4,
+    .layer = PICO_LAYER_NETWORK,
+    .alloc = pico_ipv4_alloc,
+    .process_in = pico_ipv4_process_in,
+    .process_out = pico_ipv4_process_out,
+    .push = pico_ipv4_frame_sock_push,
+    .q_in = &in,
+    .q_out = &out,
+};
+
+
+static int ipv4_route_compare(void *ka, void *kb)
+{
+    struct pico_ipv4_route *a = ka, *b = kb;
+    uint32_t a_nm, b_nm;
+    int cmp;
+
+    a_nm = long_be(a->netmask.addr);
+    b_nm = long_be(b->netmask.addr);
+
+    /* Routes are sorted by (host side) netmask len, then by addr, then by metric. */
+    if (a_nm < b_nm)
+        return -1;
+
+    if (b_nm < a_nm)
+        return 1;
+
+    cmp = pico_ipv4_compare(&a->dest, &b->dest);
+    if (cmp)
+        return cmp;
+
+    if (a->metric < b->metric)
+        return -1;
+
+    if (a->metric > b->metric)
+        return 1;
+
+    return 0;
+}
+
+
+static struct pico_ipv4_route default_bcast_route = {
+    .dest = {PICO_IP4_BCAST},
+    .netmask = {PICO_IP4_BCAST},
+    .gateway  = { 0 },
+    .link = NULL,
+    .metric = 1000
+};
+
+static struct pico_ipv4_route *route_find_default_bcast(void)
+{
+    return &default_bcast_route;
+}
+
+
+static struct pico_ipv4_route *route_find(const struct pico_ip4 *addr)
+{
+    struct pico_ipv4_route *r;
+    struct pico_tree_node *index;
+
+    if (addr->addr != PICO_IP4_BCAST) {
+        pico_tree_foreach_reverse(index, &Routes) {
+            r = index->keyValue;
+            if ((addr->addr & (r->netmask.addr)) == (r->dest.addr)) {
+                return r;
+            }
+        }
+        return NULL;
+    }
+
+    return route_find_default_bcast();
+}
+
+struct pico_ip4 pico_ipv4_route_get_gateway(struct pico_ip4 *addr)
+{
+    struct pico_ip4 nullip;
+    struct pico_ipv4_route *route;
+    nullip.addr = 0U;
+
+    if (!addr) {
+        pico_err = PICO_ERR_EINVAL;
+        return nullip;
+    }
+
+    route = route_find(addr);
+    if (!route) {
+        pico_err = PICO_ERR_EHOSTUNREACH;
+        return nullip;
+    }
+    else
+        return route->gateway;
+}
+
+struct pico_ip4 *pico_ipv4_source_find(const struct pico_ip4 *dst)
+{
+    struct pico_ip4 *myself = NULL;
+    struct pico_ipv4_route *rt;
+#ifdef PICO_SUPPORT_AODV
+    union pico_address node_address;
+    node_address.ip4.addr = dst->addr;
+    if (dst->addr && pico_ipv4_is_unicast(dst->addr))
+        pico_aodv_lookup(&node_address);
+
+#endif
+
+    if (!dst) {
+        pico_err = PICO_ERR_EINVAL;
+        return NULL;
+    }
+
+    rt = route_find(dst);
+    if (rt && rt->link) {
+        myself = &rt->link->address;
+    } else {
+        pico_err = PICO_ERR_EHOSTUNREACH;
+    }
+
+    return myself;
+}
+
+struct pico_device *pico_ipv4_source_dev_find(const struct pico_ip4 *dst)
+{
+    struct pico_device *dev = NULL;
+    struct pico_ipv4_route *rt;
+
+    if (!dst) {
+        pico_err = PICO_ERR_EINVAL;
+        return NULL;
+    }
+
+    rt = route_find(dst);
+    if (rt && rt->link) {
+        dev = rt->link->dev;
+    } else {
+        pico_err = PICO_ERR_EHOSTUNREACH;
+    }
+
+    return dev;
+}
+
+
+#ifdef PICO_SUPPORT_MCAST
+/*                        link
+ *                         |
+ *                    MCASTGroups
+ *                    |    |     |
+ *         ------------    |     ------------
+ *         |               |                |
+ *   MCASTSources    MCASTSources     MCASTSources
+ *   |  |  |  |      |  |  |  |       |  |  |  |
+ *   S  S  S  S      S  S  S  S       S  S  S  S
+ *
+ *   MCASTGroups: RBTree(mcast_group)
+ *   MCASTSources: RBTree(source)
+ */
+static int ipv4_mcast_groups_cmp(void *ka, void *kb)
+{
+    struct pico_mcast_group *a = ka, *b = kb;
+    return pico_ipv4_compare(&a->mcast_addr, &b->mcast_addr);
+}
+
+static int ipv4_mcast_sources_cmp(void *ka, void *kb)
+{
+    struct pico_ip4 *a = ka, *b = kb;
+    return pico_ipv4_compare(a, b);
+}
+
+static void pico_ipv4_mcast_print_groups(struct pico_ipv4_link *mcast_link)
+{
+    uint16_t i = 0;
+    struct pico_mcast_group *g = NULL;
+    struct pico_ip4 *source = NULL;
+    struct pico_tree_node *index = NULL, *index2 = NULL;
+    (void) source;
+
+    ip_mcast_dbg("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n");
+    ip_mcast_dbg("+                           MULTICAST list interface %-16s             +\n", mcast_link->dev->name);
+    ip_mcast_dbg("+---------------------------------------------------------------------------------+\n");
+    ip_mcast_dbg("+  nr  |    interface     | host group | reference count | filter mode |  source  +\n");
+    ip_mcast_dbg("+---------------------------------------------------------------------------------+\n");
+
+    pico_tree_foreach(index, mcast_link->MCASTGroups) {
+        g = index->keyValue;
+        ip_mcast_dbg("+ %04d | %16s |  %08X  |      %05u      |      %u      | %8s +\n", i, mcast_link->dev->name, g->mcast_addr.addr, g->reference_count, g->filter_mode, "");
+        pico_tree_foreach(index2, &g->MCASTSources) {
+            source = index2->keyValue;
+            ip_mcast_dbg("+ %4s | %16s |  %8s  |      %5s      |      %s      | %08X +\n", "", "", "", "", "", source->addr);
+        }
+        i++;
+    }
+    ip_mcast_dbg("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n");
+}
+
+static int mcast_group_update(struct pico_mcast_group *g, struct pico_tree *MCASTFilter, uint8_t filter_mode)
+{
+    struct pico_tree_node *index = NULL, *_tmp = NULL;
+    struct pico_ip4 *source = NULL;
+    /* cleanup filter */
+    pico_tree_foreach_safe(index, &g->MCASTSources, _tmp) {
+        source = index->keyValue;
+        pico_tree_delete(&g->MCASTSources, source);
+        PICO_FREE(source);
+    }
+    /* insert new filter */
+    if (MCASTFilter) {
+        pico_tree_foreach(index, MCASTFilter) {
+            if (index->keyValue) {
+                source = PICO_ZALLOC(sizeof(struct pico_ip4));
+                if (!source) {
+                    pico_err = PICO_ERR_ENOMEM;
+                    return -1;
+                }
+
+                source->addr = ((struct pico_ip4 *)index->keyValue)->addr;
+                pico_tree_insert(&g->MCASTSources, source);
+            }
+        }
+    }
+
+    g->filter_mode = filter_mode;
+    return 0;
+}
+
+int pico_ipv4_mcast_join(struct pico_ip4 *mcast_link, struct pico_ip4 *mcast_group, uint8_t reference_count, uint8_t filter_mode, struct pico_tree *MCASTFilter)
+{
+    struct pico_mcast_group *g = NULL, test = {
+        0
+    };
+    struct pico_ipv4_link *link = NULL;
+
+    if (mcast_link)
+        link = pico_ipv4_link_get(mcast_link);
+
+    if (!link)
+        link = mcast_default_link;
+
+    test.mcast_addr = *mcast_group;
+    g = pico_tree_findKey(link->MCASTGroups, &test);
+    if (g) {
+        if (reference_count)
+            g->reference_count++;
+
+        pico_igmp_state_change(mcast_link, mcast_group, filter_mode, MCASTFilter, PICO_IGMP_STATE_UPDATE);
+    } else {
+        g = PICO_ZALLOC(sizeof(struct pico_mcast_group));
+        if (!g) {
+            pico_err = PICO_ERR_ENOMEM;
+            return -1;
+        }
+
+        /* "non-existent" state of filter mode INCLUDE and empty source list */
+        g->filter_mode = PICO_IP_MULTICAST_INCLUDE;
+        g->reference_count = 1;
+        g->mcast_addr = *mcast_group;
+        g->MCASTSources.root = &LEAF;
+        g->MCASTSources.compare = ipv4_mcast_sources_cmp;
+        pico_tree_insert(link->MCASTGroups, g);
+        pico_igmp_state_change(mcast_link, mcast_group, filter_mode, MCASTFilter, PICO_IGMP_STATE_CREATE);
+    }
+
+    if (mcast_group_update(g, MCASTFilter, filter_mode) < 0) {
+        dbg("Error in mcast_group update\n");
+        return -1;
+    }
+
+    pico_ipv4_mcast_print_groups(link);
+    return 0;
+}
+
+int pico_ipv4_mcast_leave(struct pico_ip4 *mcast_link, struct pico_ip4 *mcast_group, uint8_t reference_count, uint8_t filter_mode, struct pico_tree *MCASTFilter)
+{
+
+    struct pico_mcast_group *g = NULL, test = {
+        0
+    };
+    struct pico_ipv4_link *link = NULL;
+    struct pico_tree_node *index = NULL, *_tmp = NULL;
+    struct pico_ip4 *source = NULL;
+
+    if (mcast_link)
+        link = pico_ipv4_link_get(mcast_link);
+
+    if (!link)
+        link = mcast_default_link;
+
+    test.mcast_addr = *mcast_group;
+    g = pico_tree_findKey(link->MCASTGroups, &test);
+    if (!g) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    } else {
+        if (reference_count && (--(g->reference_count) < 1)) {
+            pico_igmp_state_change(mcast_link, mcast_group, filter_mode, MCASTFilter, PICO_IGMP_STATE_DELETE);
+            /* cleanup filter */
+            pico_tree_foreach_safe(index, &g->MCASTSources, _tmp) {
+                source = index->keyValue;
+                pico_tree_delete(&g->MCASTSources, source);
+                PICO_FREE(source);
+            }
+            pico_tree_delete(link->MCASTGroups, g);
+            PICO_FREE(g);
+        } else {
+            pico_igmp_state_change(mcast_link, mcast_group, filter_mode, MCASTFilter, PICO_IGMP_STATE_UPDATE);
+            if (mcast_group_update(g, MCASTFilter, filter_mode) < 0)
+                return -1;
+        }
+    }
+
+    pico_ipv4_mcast_print_groups(link);
+    return 0;
+}
+
+struct pico_ipv4_link *pico_ipv4_get_default_mcastlink(void)
+{
+    return mcast_default_link;
+}
+
+static int pico_ipv4_mcast_filter(struct pico_frame *f)
+{
+    struct pico_ipv4_link *link = NULL;
+    struct pico_tree_node *index = NULL, *index2 = NULL;
+    struct pico_mcast_group *g = NULL, test = {
+        0
+    };
+    struct pico_ipv4_hdr *hdr = (struct pico_ipv4_hdr *) f->net_hdr;
+
+    test.mcast_addr = hdr->dst;
+
+    pico_tree_foreach(index, &Tree_dev_link) {
+        link = index->keyValue;
+        g = pico_tree_findKey(link->MCASTGroups, &test);
+        if (g) {
+            if (f->dev == link->dev) {
+                ip_mcast_dbg("MCAST: IP %08X is group member of current link %s\n", hdr->dst.addr, f->dev->name);
+                /* perform source filtering */
+                switch (g->filter_mode) {
+                case PICO_IP_MULTICAST_INCLUDE:
+                    pico_tree_foreach(index2, &g->MCASTSources) {
+                        if (hdr->src.addr == ((struct pico_ip4 *)index2->keyValue)->addr) {
+                            ip_mcast_dbg("MCAST: IP %08X in included interface source list\n", hdr->src.addr);
+                            return 0;
+                        }
+                    }
+                    ip_mcast_dbg("MCAST: IP %08X NOT in included interface source list\n", hdr->src.addr);
+                    return -1;
+
+                case PICO_IP_MULTICAST_EXCLUDE:
+                    pico_tree_foreach(index2, &g->MCASTSources) {
+                        if (hdr->src.addr == ((struct pico_ip4 *)index2->keyValue)->addr) {
+                            ip_mcast_dbg("MCAST: IP %08X in excluded interface source list\n", hdr->src.addr);
+                            return -1;
+                        }
+                    }
+                    ip_mcast_dbg("MCAST: IP %08X NOT in excluded interface source list\n", hdr->src.addr);
+                    return 0;
+
+                default:
+                    return -1;
+                }
+            } else {
+                ip_mcast_dbg("MCAST: IP %08X is group member of different link %s\n", hdr->dst.addr, link->dev->name);
+            }
+        } else {
+            ip_mcast_dbg("MCAST: IP %08X is not a group member of link %s\n", hdr->dst.addr, f->dev->name);
+        }
+    }
+    return -1;
+}
+
+#else
+
+int pico_ipv4_mcast_join(struct pico_ip4 *mcast_link, struct pico_ip4 *mcast_group, uint8_t reference_count, uint8_t filter_mode, struct pico_tree *MCASTFilter)
+{
+    pico_err = PICO_ERR_EPROTONOSUPPORT;
+    return -1;
+}
+
+int pico_ipv4_mcast_leave(struct pico_ip4 *mcast_link, struct pico_ip4 *mcast_group, uint8_t reference_count, uint8_t filter_mode, struct pico_tree *MCASTFilter)
+{
+    pico_err = PICO_ERR_EPROTONOSUPPORT;
+    return -1;
+}
+
+struct pico_ipv4_link *pico_ipv4_get_default_mcastlink(void)
+{
+    pico_err = PICO_ERR_EPROTONOSUPPORT;
+    return NULL;
+}
+#endif /* PICO_SUPPORT_MCAST */
+
+/* #define DEBUG_ROUTE */
+#ifdef DEBUG_ROUTE
+void dbg_route(void)
+{
+    struct pico_ipv4_route *r;
+    struct pico_tree_node *index;
+    int count_hosts = 0;
+    dbg("==== ROUTING TABLE =====\n");
+    pico_tree_foreach(index, &Routes) {
+        r = index->keyValue;
+        dbg("Route to %08x/%08x, gw %08x, dev: %s, metric: %d\n", r->dest.addr, r->netmask.addr, r->gateway.addr, r->link->dev->name, r->metric);
+        if (r->netmask.addr == 0xFFFFFFFF)
+            count_hosts++;
+    }
+    dbg("================ total HOST nodes: %d ======\n\n\n", count_hosts);
+}
+#else
+#define dbg_route() do { } while(0)
+#endif
+
+int pico_ipv4_frame_push(struct pico_frame *f, struct pico_ip4 *dst, uint8_t proto)
+{
+
+    struct pico_ipv4_route *route;
+    struct pico_ipv4_link *link;
+    struct pico_ipv4_hdr *hdr;
+    uint8_t ttl = PICO_IPV4_DEFAULT_TTL;
+    uint8_t vhl = 0x45; /* version 4, header length 20 */
+    static uint16_t ipv4_progressive_id = 0x91c0;
+#ifdef PICO_SUPPORT_MCAST
+    struct pico_tree_node *index;
+#endif
+
+    if (!f || !dst) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+
+    hdr = (struct pico_ipv4_hdr *) f->net_hdr;
+    if (!hdr) {
+        dbg("IP header error\n");
+        pico_err = PICO_ERR_EINVAL;
+        goto drop;
+    }
+
+    if (dst->addr == 0) {
+        dbg("IP destination addr error\n");
+        pico_err = PICO_ERR_EINVAL;
+        goto drop;
+    }
+
+    route = route_find(dst);
+    if (!route) {
+        /* dbg("Route to %08x not found.\n", long_be(dst->addr)); */
+
+
+        pico_err = PICO_ERR_EHOSTUNREACH;
+        goto drop;
+    } else {
+        link = route->link;
+#ifdef PICO_SUPPORT_MCAST
+        if (pico_ipv4_is_multicast(dst->addr)) { /* if multicast */
+            switch (proto) {
+            case PICO_PROTO_UDP:
+                if (pico_udp_get_mc_ttl(f->sock, &ttl) < 0)
+                    ttl = PICO_IP_DEFAULT_MULTICAST_TTL;
+
+                break;
+            case PICO_PROTO_IGMP:
+                vhl = 0x46; /* header length 24 */
+                ttl = 1;
+                /* router alert (RFC 2113) */
+                hdr->options[0] = 0x94;
+                hdr->options[1] = 0x04;
+                hdr->options[2] = 0x00;
+                hdr->options[3] = 0x00;
+                if (f->dev && link->dev != f->dev) { /* default link is not requested link */
+                    pico_tree_foreach(index, &Tree_dev_link) {
+                        link = index->keyValue;
+                        if (link->dev == f->dev)
+                            break;
+                    }
+                }
+
+                break;
+            default:
+                ttl = PICO_IPV4_DEFAULT_TTL;
+            }
+        }
+
+#endif
+    }
+
+    hdr->vhl = vhl;
+    hdr->len = short_be((uint16_t)(f->transport_len + f->net_len));
+    if ((f->transport_hdr != f->payload)  &&
+#ifdef PICO_SUPPORT_IPFRAG
+        (0 == (f->frag & PICO_IPV4_MOREFRAG)) &&
+        (0 == (f->frag & PICO_IPV4_FRAG_MASK)) &&
+#endif
+        1 )
+        ipv4_progressive_id++;
+
+    if (f->send_ttl > 0) {
+        ttl = f->send_ttl;
+    }
+
+    hdr->id = short_be(ipv4_progressive_id);
+    hdr->dst.addr = dst->addr;
+    hdr->src.addr = link->address.addr;
+    hdr->ttl = ttl;
+    hdr->tos = f->send_tos;
+    hdr->proto = proto;
+    hdr->frag = short_be(PICO_IPV4_DONTFRAG);
+
+#ifdef PICO_SUPPORT_IPFRAG
+#  ifdef PICO_SUPPORT_UDP
+    if (proto == PICO_PROTO_UDP) {
+        /* first fragment, can not use transport_len to calculate IP length */
+        if (f->transport_hdr != f->payload)
+            hdr->len = short_be((uint16_t)(f->payload_len + sizeof(struct pico_udp_hdr) + f->net_len));
+
+        /* set fragmentation flags and offset calculated in socket layer */
+        hdr->frag = short_be(f->frag);
+    }
+
+    if (proto == PICO_PROTO_ICMP4)
+    {
+        hdr->frag = short_be(f->frag);
+    }
+
+#   endif
+#endif /* PICO_SUPPORT_IPFRAG */
+    pico_ipv4_checksum(f);
+
+    if (f->sock && f->sock->dev) {
+        /* if the socket has its device set, use that (currently used for DHCP) */
+        f->dev = f->sock->dev;
+    } else {
+        f->dev = link->dev;
+        if (f->sock)
+            f->sock->dev = f->dev;
+    }
+
+#ifdef PICO_SUPPORT_MCAST
+    if (pico_ipv4_is_multicast(hdr->dst.addr)) {
+        struct pico_frame *cpy;
+        /* Sending UDP multicast datagram, am I member? If so, loopback copy */
+        if ((proto != PICO_PROTO_IGMP) && (pico_ipv4_mcast_filter(f) == 0)) {
+            ip_mcast_dbg("MCAST: sender is member of group, loopback copy\n");
+            cpy = pico_frame_copy(f);
+            pico_enqueue(&in, cpy);
+        }
+    }
+
+#endif
+
+/* #ifdef PICO_SUPPORT_AODV */
+#if 0
+    {
+        union pico_address node_address;
+        node_address.ip4.addr = hdr->dst.addr;
+        if(hdr->dst.addr && pico_ipv4_is_unicast(hdr->dst.addr))
+            pico_aodv_lookup(&node_address);
+    }
+#endif
+
+    if (pico_ipv4_link_get(&hdr->dst)) {
+        /* it's our own IP */
+        return pico_enqueue(&in, f);
+    } else{
+        /* TODO: Check if there are members subscribed here */
+        return pico_enqueue(&out, f);
+    }
+
+drop:
+    pico_frame_discard(f);
+    return -1;
+}
+
+
+static int pico_ipv4_frame_sock_push(struct pico_protocol *self, struct pico_frame *f)
+{
+    struct pico_ip4 *dst;
+    struct pico_remote_endpoint *remote_endpoint = (struct pico_remote_endpoint *) f->info;
+    IGNORE_PARAMETER(self);
+
+    if (!f->sock) {
+        pico_frame_discard(f);
+        return -1;
+    }
+
+    if (remote_endpoint) {
+        dst = &remote_endpoint->remote_addr.ip4;
+    } else {
+        dst = &f->sock->remote_addr.ip4;
+    }
+
+    return pico_ipv4_frame_push(f, dst, (uint8_t)f->sock->proto->proto_number);
+}
+
+
+int MOCKABLE pico_ipv4_route_add(struct pico_ip4 address, struct pico_ip4 netmask, struct pico_ip4 gateway, int metric, struct pico_ipv4_link *link)
+{
+    struct pico_ipv4_route test, *new;
+    test.dest.addr = address.addr;
+    test.netmask.addr = netmask.addr;
+    test.metric = (uint32_t)metric;
+
+    if (pico_tree_findKey(&Routes, &test)) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+    new = PICO_ZALLOC(sizeof(struct pico_ipv4_route));
+    if (!new) {
+        pico_err = PICO_ERR_ENOMEM;
+        return -1;
+    }
+
+    new->dest.addr = address.addr;
+    new->netmask.addr = netmask.addr;
+    new->gateway.addr = gateway.addr;
+    new->metric = (uint32_t)metric;
+    if (gateway.addr == 0) {
+        /* No gateway provided, use the link */
+        new->link = link;
+    } else {
+        struct pico_ipv4_route *r = route_find(&gateway);
+        if (!r ) { /* Specified Gateway is unreachable */
+            pico_err = PICO_ERR_EHOSTUNREACH;
+            PICO_FREE(new);
+            return -1;
+        }
+
+        if (r->gateway.addr) { /* Specified Gateway is not a neighbor */
+            pico_err = PICO_ERR_ENETUNREACH;
+            PICO_FREE(new);
+            return -1;
+        }
+
+        new->link = r->link;
+    }
+
+    if (!new->link) {
+        pico_err = PICO_ERR_EINVAL;
+        PICO_FREE(new);
+        return -1;
+    }
+
+    pico_tree_insert(&Routes, new);
+    dbg_route();
+    return 0;
+}
+
+int pico_ipv4_route_del(struct pico_ip4 address, struct pico_ip4 netmask, int metric)
+{
+    struct pico_ipv4_route test, *found;
+
+    test.dest.addr = address.addr;
+    test.netmask.addr = netmask.addr;
+    test.metric = (uint32_t)metric;
+
+    found = pico_tree_findKey(&Routes, &test);
+    if (found) {
+
+        pico_tree_delete(&Routes, found);
+        PICO_FREE(found);
+
+        dbg_route();
+        return 0;
+    }
+
+    pico_err = PICO_ERR_EINVAL;
+    return -1;
+}
+
+
+int pico_ipv4_link_add(struct pico_device *dev, struct pico_ip4 address, struct pico_ip4 netmask)
+{
+    struct pico_ipv4_link test, *new;
+    struct pico_ip4 network, gateway;
+    char ipstr[30];
+
+    if (!dev) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+    test.address.addr = address.addr;
+    test.netmask.addr = netmask.addr;
+    test.dev = dev;
+    /** XXX: Valid netmask / unicast address test **/
+
+    if (pico_tree_findKey(&Tree_dev_link, &test)) {
+        pico_err = PICO_ERR_EADDRINUSE;
+        return -1;
+    }
+
+    /** XXX: Check for network already in use (e.g. trying to assign 10.0.0.1/24 where 10.1.0.1/8 is in use) **/
+    new = PICO_ZALLOC(sizeof(struct pico_ipv4_link));
+    if (!new) {
+        dbg("IPv4: Out of memory!\n");
+        pico_err = PICO_ERR_ENOMEM;
+        return -1;
+    }
+
+    new->address.addr = address.addr;
+    new->netmask.addr = netmask.addr;
+    new->dev = dev;
+#ifdef PICO_SUPPORT_MCAST
+    new->MCASTGroups = PICO_ZALLOC(sizeof(struct pico_tree));
+    if (!new->MCASTGroups) {
+        PICO_FREE(new);
+        dbg("IPv4: Out of memory!\n");
+        pico_err = PICO_ERR_ENOMEM;
+        return -1;
+    }
+
+    new->MCASTGroups->root = &LEAF;
+    new->MCASTGroups->compare = ipv4_mcast_groups_cmp;
+    new->mcast_compatibility = PICO_IGMPV3; /* default RFC 3376 $7.2.1 */
+    new->mcast_last_query_interval = PICO_IGMP_QUERY_INTERVAL;
+#endif
+
+    pico_tree_insert(&Tree_dev_link, new);
+#ifdef PICO_SUPPORT_MCAST
+    do {
+        struct pico_ip4 mcast_all_hosts, mcast_addr, mcast_nm, mcast_gw;
+        if (!mcast_default_link) {
+            mcast_addr.addr = long_be(0xE0000000); /* 224.0.0.0 */
+            mcast_nm.addr = long_be(0xF0000000); /* 15.0.0.0 */
+            mcast_gw.addr = long_be(0x00000000);
+            mcast_default_link = new;
+            pico_ipv4_route_add(mcast_addr, mcast_nm, mcast_gw, 1, new);
+        }
+
+        mcast_all_hosts.addr = PICO_MCAST_ALL_HOSTS;
+        pico_ipv4_mcast_join(&address, &mcast_all_hosts, 1, PICO_IP_MULTICAST_EXCLUDE, NULL);
+    } while(0);
+#endif
+
+    network.addr = address.addr & netmask.addr;
+    gateway.addr = 0U;
+    pico_ipv4_route_add(network, netmask, gateway, 1, new);
+    pico_ipv4_to_string(ipstr, new->address.addr);
+    dbg("Assigned ipv4 %s to device %s\n", ipstr, new->dev->name);
+    if (default_bcast_route.link == NULL)
+        default_bcast_route.link = new;
+
+    return 0;
+}
+
+static int pico_ipv4_cleanup_routes(struct pico_ipv4_link *link)
+{
+    struct pico_tree_node *index = NULL, *tmp = NULL;
+    struct pico_ipv4_route *route = NULL;
+
+    pico_tree_foreach_safe(index, &Routes, tmp) {
+        route = index->keyValue;
+        if (link == route->link)
+            pico_ipv4_route_del(route->dest, route->netmask, (int)route->metric);
+    }
+    return 0;
+}
+
+void MOCKABLE pico_ipv4_route_set_bcast_link(struct pico_ipv4_link *link)
+{
+    if (link)
+        default_bcast_route.link = link;
+}
+
+int pico_ipv4_link_del(struct pico_device *dev, struct pico_ip4 address)
+{
+    struct pico_ipv4_link test, *found;
+
+    if (!dev) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+    test.address.addr = address.addr;
+    test.dev = dev;
+    found = pico_tree_findKey(&Tree_dev_link, &test);
+    if (!found) {
+        pico_err = PICO_ERR_ENXIO;
+        return -1;
+    }
+
+#ifdef PICO_SUPPORT_MCAST
+    do {
+        struct pico_ip4 mcast_all_hosts, mcast_addr, mcast_nm;
+        struct pico_mcast_group *g = NULL;
+        struct pico_tree_node *index, *_tmp;
+        if (found == mcast_default_link) {
+            mcast_addr.addr = long_be(0xE0000000); /* 224.0.0.0 */
+            mcast_nm.addr = long_be(0xF0000000); /* 15.0.0.0 */
+            mcast_default_link = NULL;
+            pico_ipv4_route_del(mcast_addr, mcast_nm, 1);
+        }
+
+        mcast_all_hosts.addr = PICO_MCAST_ALL_HOSTS;
+        pico_ipv4_mcast_leave(&address, &mcast_all_hosts, 1, PICO_IP_MULTICAST_EXCLUDE, NULL);
+        pico_tree_foreach_safe(index, found->MCASTGroups, _tmp) {
+            g = index->keyValue;
+            pico_tree_delete(found->MCASTGroups, g);
+            PICO_FREE(g);
+        }
+    } while(0);
+#endif
+
+    pico_ipv4_cleanup_routes(found);
+    pico_tree_delete(&Tree_dev_link, found);
+    if (default_bcast_route.link == found)
+        default_bcast_route.link = NULL;
+
+    PICO_FREE(found);
+
+    return 0;
+}
+
+
+struct pico_ipv4_link *pico_ipv4_link_get(struct pico_ip4 *address)
+{
+    struct pico_ipv4_link test = {
+        0
+    }, *found = NULL;
+    test.address.addr = address->addr;
+
+    found = pico_tree_findKey(&Tree_dev_link, &test);
+    if (!found)
+        return NULL;
+    else
+        return found;
+}
+
+struct pico_ipv4_link *MOCKABLE pico_ipv4_link_by_dev(struct pico_device *dev)
+{
+    struct pico_tree_node *index = NULL;
+    struct pico_ipv4_link *link = NULL;
+
+    pico_tree_foreach(index, &Tree_dev_link) {
+        link = index->keyValue;
+        if (link->dev == dev)
+            return link;
+    }
+    return NULL;
+}
+
+struct pico_ipv4_link *pico_ipv4_link_by_dev_next(struct pico_device *dev, struct pico_ipv4_link *last)
+{
+    struct pico_tree_node *index = NULL;
+    struct pico_ipv4_link *link = NULL;
+    int valid = 0;
+
+    if (last == NULL)
+        valid = 1;
+
+    pico_tree_foreach(index, &Tree_dev_link) {
+        link = index->keyValue;
+        if (link->dev == dev) {
+            if (last == link)
+                valid = 1;
+            else if (valid > 0)
+                return link;
+        }
+    }
+    return NULL;
+}
+
+struct pico_device *MOCKABLE pico_ipv4_link_find(struct pico_ip4 *address)
+{
+    struct pico_ipv4_link test, *found;
+    if (!address) {
+        pico_err = PICO_ERR_EINVAL;
+        return NULL;
+    }
+
+    test.dev = NULL;
+    test.address.addr = address->addr;
+    found = pico_tree_findKey(&Tree_dev_link, &test);
+    if (!found) {
+        pico_err = PICO_ERR_ENXIO;
+        return NULL;
+    }
+
+    return found->dev;
+}
+
+
+static int pico_ipv4_rebound_large(struct pico_frame *f)
+{
+#ifdef PICO_SUPPORT_IPFRAG
+    uint16_t total_payload_written = 0;
+    uint32_t len = f->transport_len;
+    struct pico_frame *fr;
+    struct pico_ip4 dst;
+    struct pico_ipv4_hdr *hdr;
+    hdr = (struct pico_ipv4_hdr *) f->net_hdr;
+    dst.addr = hdr->src.addr;
+
+    while(total_payload_written < len) {
+        uint32_t space = (uint32_t)len - total_payload_written;
+        if (space > PICO_IPV4_MAXPAYLOAD)
+            space = PICO_IPV4_MAXPAYLOAD;
+
+        fr = pico_ipv4_alloc(&pico_proto_ipv4, (uint16_t)space);
+        if (!fr) {
+            pico_err = PICO_ERR_ENOMEM;
+            return -1;
+        }
+
+        if (space + total_payload_written < len)
+        {
+            fr->frag |= PICO_IPV4_MOREFRAG;
+        }
+        else
+        {
+            fr->frag &= PICO_IPV4_FRAG_MASK;
+        }
+
+        fr->frag = (((total_payload_written) >> 3u) & 0xffffu) | fr->frag;
+
+        memcpy(fr->transport_hdr, f->transport_hdr + total_payload_written, fr->transport_len);
+        if (pico_ipv4_frame_push(fr, &dst, hdr->proto) > 0) {
+            total_payload_written = (uint16_t)((uint16_t)fr->transport_len + total_payload_written);
+        } else {
+            pico_frame_discard(fr);
+            break;
+        }
+    } /* while() */
+    return (int)total_payload_written;
+#else
+    (void)f;
+    return -1;
+#endif
+}
+
+int pico_ipv4_rebound(struct pico_frame *f)
+{
+    struct pico_ip4 dst;
+    struct pico_ipv4_hdr *hdr;
+    if (!f) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+    hdr = (struct pico_ipv4_hdr *) f->net_hdr;
+    if (!hdr) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+    dst.addr = hdr->src.addr;
+    if (f->transport_len > PICO_IPV4_MAXPAYLOAD) {
+        return pico_ipv4_rebound_large(f);
+    }
+
+    return pico_ipv4_frame_push(f, &dst, hdr->proto);
+}
+
+static int pico_ipv4_pre_forward_checks(struct pico_frame *f)
+{
+    static uint16_t last_id = 0;
+    static uint16_t last_proto = 0;
+    static struct pico_ip4 last_src = {
+        0
+    };
+    static struct pico_ip4 last_dst = {
+        0
+    };
+    struct pico_ipv4_hdr *hdr = (struct pico_ipv4_hdr *)f->net_hdr;
+
+    /* Decrease TTL, check if expired */
+    hdr->ttl = (uint8_t)(hdr->ttl - 1);
+    if (hdr->ttl < 1) {
+        pico_notify_ttl_expired(f);
+        dbg(" ------------------- TTL EXPIRED\n");
+        return -1;
+    }
+
+    /* HACK: increase crc to compensate decreased TTL */
+    hdr->crc++;
+
+    /* If source is local, discard anyway (packets bouncing back and forth) */
+    if (pico_ipv4_link_get(&hdr->src))
+        return -1;
+
+    /* If this was the last forwarded packet, silently discard to prevent duplications */
+    if ((last_src.addr == hdr->src.addr) && (last_id == hdr->id)
+        && (last_dst.addr == hdr->dst.addr) && (last_proto == hdr->proto)) {
+        return -1;
+    } else {
+        last_src.addr = hdr->src.addr;
+        last_dst.addr = hdr->dst.addr;
+        last_id = hdr->id;
+        last_proto = hdr->proto;
+    }
+
+    return 0;
+}
+
+static int pico_ipv4_forward_check_dev(struct pico_frame *f)
+{
+    if (f->dev->eth != NULL)
+        f->len -= PICO_SIZE_ETHHDR;
+
+    if (f->len > f->dev->mtu) {
+        pico_notify_pkt_too_big(f);
+        return -1;
+    }
+
+    return 0;
+}
+
+static int pico_ipv4_forward(struct pico_frame *f)
+{
+    struct pico_ipv4_hdr *hdr = (struct pico_ipv4_hdr *)f->net_hdr;
+    struct pico_ipv4_route *rt;
+    if (!hdr) {
+        return -1;
+    }
+
+    rt = route_find(&hdr->dst);
+    if (!rt) {
+        pico_notify_dest_unreachable(f);
+        return -1;
+    }
+
+    f->dev = rt->link->dev;
+
+    if (pico_ipv4_pre_forward_checks(f) < 0)
+        return -1;
+
+    pico_ipv4_nat_outbound(f, &rt->link->address);
+
+    f->start = f->net_hdr;
+
+    if (pico_ipv4_forward_check_dev(f) < 0)
+        return -1;
+
+    pico_sendto_dev(f);
+    return 0;
+
+}
+
+int pico_ipv4_is_broadcast(uint32_t addr)
+{
+    struct pico_ipv4_link *link;
+    struct pico_tree_node *index;
+    if (addr == PICO_IP4_BCAST)
+        return 1;
+
+    pico_tree_foreach(index, &Tree_dev_link) {
+        link = index->keyValue;
+        if ((link->address.addr | (~link->netmask.addr)) == addr)
+            return 1;
+    }
+    return 0;
+}
+
+void pico_ipv4_unreachable(struct pico_frame *f, int err)
+{
+    struct pico_ipv4_hdr *hdr = (struct pico_ipv4_hdr *) f->net_hdr;
+#if defined PICO_SUPPORT_TCP || defined PICO_SUPPORT_UDP
+    f->transport_hdr = ((uint8_t *)f->net_hdr) + PICO_SIZE_IP4HDR;
+    pico_transport_error(f, hdr->proto, err);
+#endif
+}
+
+int pico_ipv4_cleanup_links(struct pico_device *dev)
+{
+    struct pico_tree_node *index = NULL, *_tmp = NULL;
+    struct pico_ipv4_link *link = NULL;
+
+    pico_tree_foreach_safe(index, &Tree_dev_link, _tmp) {
+        link = index->keyValue;
+        if (dev == link->dev)
+            pico_ipv4_link_del(dev, link->address);
+    }
+    return 0;
+}
+
+
+#endif
diff --git a/net/picotcp/modules/pico_ipv4.h b/net/picotcp/modules/pico_ipv4.h
new file mode 100644
index 0000000..2429815
--- /dev/null
+++ b/net/picotcp/modules/pico_ipv4.h
@@ -0,0 +1,124 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   .
+
+ *********************************************************************/
+#ifndef INCLUDE_PICO_IPV4
+#define INCLUDE_PICO_IPV4
+#include "pico_addressing.h"
+#include "pico_protocol.h"
+#include "pico_tree.h"
+#include "pico_device.h"
+
+#define PICO_IPV4_INADDR_ANY 0x00000000U
+
+#define PICO_IPV4_MTU (1500u)
+#define PICO_SIZE_IP4HDR (uint32_t)((sizeof(struct pico_ipv4_hdr)))
+#define PICO_IPV4_MAXPAYLOAD (PICO_IPV4_MTU - PICO_SIZE_IP4HDR)
+#define PICO_IPV4_DONTFRAG 0x4000U
+#define PICO_IPV4_MOREFRAG 0x2000U
+#define PICO_IPV4_EVIL      0x8000U
+#define PICO_IPV4_FRAG_MASK 0x1FFFU
+#define PICO_IPV4_DEFAULT_TTL 64
+#ifndef MBED
+    #define PICO_IPV4_FRAG_MAX_SIZE (uint32_t)(63 * 1024)
+#else
+    #define PICO_IPV4_FRAG_MAX_SIZE PICO_DEFAULT_SOCKETQ
+#endif
+
+extern struct pico_protocol pico_proto_ipv4;
+
+PACKED_STRUCT_DEF pico_ipv4_hdr {
+    uint8_t vhl;
+    uint8_t tos;
+    uint16_t len;
+    uint16_t id;
+    uint16_t frag;
+    uint8_t ttl;
+    uint8_t proto;
+    uint16_t crc;
+    struct pico_ip4 src;
+    struct pico_ip4 dst;
+    uint8_t options[];
+};
+
+PACKED_STRUCT_DEF pico_ipv4_pseudo_hdr
+{
+    struct pico_ip4 src;
+    struct pico_ip4 dst;
+    uint8_t zeros;
+    uint8_t proto;
+    uint16_t len;
+};
+
+/* Interface: link to device */
+struct pico_mcast_list;
+
+struct pico_ipv4_link
+{
+    struct pico_device *dev;
+    struct pico_ip4 address;
+    struct pico_ip4 netmask;
+#ifdef PICO_SUPPORT_MCAST
+    struct pico_tree *MCASTGroups;
+    uint8_t mcast_compatibility;
+    uint8_t mcast_last_query_interval;
+#endif
+};
+
+#ifdef PICO_SUPPORT_MCAST
+struct pico_mcast_group {
+    uint8_t filter_mode;
+    uint16_t reference_count;
+    struct pico_ip4 mcast_addr;
+    struct pico_tree MCASTSources;
+};
+#endif
+
+struct pico_ipv4_route
+{
+    struct pico_ip4 dest;
+    struct pico_ip4 netmask;
+    struct pico_ip4 gateway;
+    struct pico_ipv4_link *link;
+    uint32_t metric;
+};
+
+extern struct pico_tree Routes;
+
+
+int pico_ipv4_compare(struct pico_ip4 *a, struct pico_ip4 *b);
+int pico_ipv4_to_string(char *ipbuf, const uint32_t ip);
+int pico_string_to_ipv4(const char *ipstr, uint32_t *ip);
+int pico_ipv4_valid_netmask(uint32_t mask);
+int pico_ipv4_is_unicast(uint32_t address);
+int pico_ipv4_is_multicast(uint32_t address);
+int pico_ipv4_is_broadcast(uint32_t addr);
+int pico_ipv4_is_loopback(uint32_t addr);
+int pico_ipv4_is_valid_src(uint32_t addr, struct pico_device *dev);
+
+int pico_ipv4_link_add(struct pico_device *dev, struct pico_ip4 address, struct pico_ip4 netmask);
+int pico_ipv4_link_del(struct pico_device *dev, struct pico_ip4 address);
+int pico_ipv4_rebound(struct pico_frame *f);
+
+int pico_ipv4_frame_push(struct pico_frame *f, struct pico_ip4 *dst, uint8_t proto);
+struct pico_ipv4_link *pico_ipv4_link_get(struct pico_ip4 *address);
+struct pico_ipv4_link *pico_ipv4_link_by_dev(struct pico_device *dev);
+struct pico_ipv4_link *pico_ipv4_link_by_dev_next(struct pico_device *dev, struct pico_ipv4_link *last);
+struct pico_device *pico_ipv4_link_find(struct pico_ip4 *address);
+struct pico_ip4 *pico_ipv4_source_find(const struct pico_ip4 *dst);
+struct pico_device *pico_ipv4_source_dev_find(const struct pico_ip4 *dst);
+int pico_ipv4_route_add(struct pico_ip4 address, struct pico_ip4 netmask, struct pico_ip4 gateway, int metric, struct pico_ipv4_link *link);
+int pico_ipv4_route_del(struct pico_ip4 address, struct pico_ip4 netmask, int metric);
+struct pico_ip4 pico_ipv4_route_get_gateway(struct pico_ip4 *addr);
+void pico_ipv4_route_set_bcast_link(struct pico_ipv4_link *link);
+void pico_ipv4_unreachable(struct pico_frame *f, int err);
+
+int pico_ipv4_mcast_join(struct pico_ip4 *mcast_link, struct pico_ip4 *mcast_group, uint8_t reference_count, uint8_t filter_mode, struct pico_tree *MCASTFilter);
+int pico_ipv4_mcast_leave(struct pico_ip4 *mcast_link, struct pico_ip4 *mcast_group, uint8_t reference_count, uint8_t filter_mode, struct pico_tree *MCASTFilter);
+struct pico_ipv4_link *pico_ipv4_get_default_mcastlink(void);
+int pico_ipv4_cleanup_links(struct pico_device *dev);
+
+#endif /* _INCLUDE_PICO_IPV4 */
diff --git a/net/picotcp/modules/pico_ipv6.h b/net/picotcp/modules/pico_ipv6.h
new file mode 100644
index 0000000..a753531
--- /dev/null
+++ b/net/picotcp/modules/pico_ipv6.h
@@ -0,0 +1,153 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   .
+
+ *********************************************************************/
+#ifndef _INCLUDE_PICO_IPV6
+#define _INCLUDE_PICO_IPV6
+#include "pico_addressing.h"
+#include "pico_protocol.h"
+
+#define PICO_SIZE_IP6HDR ((uint32_t)(sizeof(struct pico_ipv6_hdr)))
+#define PICO_IPV6_DEFAULT_HOP 64
+#define PICO_IPV6_MIN_MTU 1280
+
+
+#define PICO_IPV6_EXTHDR_HOPBYHOP 0
+#define PICO_IPV6_EXTHDR_ROUTING 43
+#define PICO_IPV6_EXTHDR_FRAG 44
+#define PICO_IPV6_EXTHDR_ESP 50
+#define PICO_IPV6_EXTHDR_AUTH 51
+#define PICO_IPV6_EXTHDR_NONE 59
+#define PICO_IPV6_EXTHDR_DESTOPT 60
+
+
+
+
+extern const uint8_t PICO_IP6_ANY[PICO_SIZE_IP6];
+extern struct pico_protocol pico_proto_ipv6;
+extern struct pico_tree IPV6Routes;
+
+PACKED_STRUCT_DEF pico_ipv6_hdr {
+    uint32_t vtf;
+    uint16_t len;
+    uint8_t nxthdr;
+    uint8_t hop;
+    struct pico_ip6 src;
+    struct pico_ip6 dst;
+    uint8_t extensions[0];
+};
+
+PACKED_STRUCT_DEF pico_ipv6_pseudo_hdr
+{
+    struct pico_ip6 src;
+    struct pico_ip6 dst;
+    uint32_t len;
+    uint8_t zero[3];
+    uint8_t nxthdr;
+};
+
+struct pico_ipv6_link
+{
+    struct pico_device *dev;
+    struct pico_ip6 address;
+    struct pico_ip6 netmask;
+    uint8_t istentative : 1;
+    uint8_t isduplicate : 1;
+    struct pico_timer *dad_timer;
+    uint16_t dup_detect_retrans;
+    pico_time expire_time;
+};
+
+struct pico_ipv6_hbhoption {
+    uint8_t type;
+    uint8_t len;
+    uint8_t options[0];
+};
+
+struct pico_ipv6_destoption {
+    uint8_t type;
+    uint8_t len;
+    uint8_t options[0];
+};
+
+struct pico_ipv6_route
+{
+    struct pico_ip6 dest;
+    struct pico_ip6 netmask;
+    struct pico_ip6 gateway;
+    struct pico_ipv6_link *link;
+    uint32_t metric;
+};
+
+PACKED_STRUCT_DEF pico_ipv6_exthdr {
+    uint8_t nxthdr;
+
+    PACKED_UNION_DEF ipv6_ext_u {
+        PEDANTIC_STRUCT_DEF hopbyhop_s {
+            uint8_t len;
+            uint8_t options[0];
+        } hopbyhop;
+
+        PEDANTIC_STRUCT_DEF destopt_s {
+            uint8_t len;
+            uint8_t options[0];
+        } destopt;
+
+        PEDANTIC_STRUCT_DEF routing_s {
+            uint8_t len;
+            uint8_t routtype;
+            uint8_t segleft;
+        } routing;
+
+        PEDANTIC_STRUCT_DEF fragmentation_s {
+            uint8_t res;
+            uint8_t om[2];
+            uint8_t id[4];
+        } frag;
+    } ext;
+};
+
+int pico_ipv6_compare(struct pico_ip6 *a, struct pico_ip6 *b);
+int pico_string_to_ipv6(const char *ipstr, uint8_t *ip);
+int pico_ipv6_to_string(char *ipbuf, const uint8_t ip[PICO_SIZE_IP6]);
+int pico_ipv6_is_unicast(struct pico_ip6 *a);
+int pico_ipv6_is_multicast(const uint8_t addr[PICO_SIZE_IP6]);
+int pico_ipv6_is_allhosts_multicast(const uint8_t addr[PICO_SIZE_IP6]);
+int pico_ipv6_is_solnode_multicast(const uint8_t addr[PICO_SIZE_IP6], struct pico_device *dev);
+int pico_ipv6_is_global(const uint8_t addr[PICO_SIZE_IP6]);
+int pico_ipv6_is_uniquelocal(const uint8_t addr[PICO_SIZE_IP6]);
+int pico_ipv6_is_sitelocal(const uint8_t addr[PICO_SIZE_IP6]);
+int pico_ipv6_is_linklocal(const uint8_t addr[PICO_SIZE_IP6]);
+int pico_ipv6_is_solicited(const uint8_t addr[PICO_SIZE_IP6]);
+int pico_ipv6_is_unspecified(const uint8_t addr[PICO_SIZE_IP6]);
+int pico_ipv6_is_localhost(const uint8_t addr[PICO_SIZE_IP6]);
+
+int pico_ipv6_frame_push(struct pico_frame *f, struct pico_ip6 *src, struct pico_ip6 *dst, uint8_t proto, int is_dad);
+int pico_ipv6_route_add(struct pico_ip6 address, struct pico_ip6 netmask, struct pico_ip6 gateway, int metric, struct pico_ipv6_link *link);
+int pico_ipv6_route_del(struct pico_ip6 address, struct pico_ip6 netmask, struct pico_ip6 gateway, int metric, struct pico_ipv6_link *link);
+void pico_ipv6_unreachable(struct pico_frame *f, uint8_t code);
+
+struct pico_ipv6_link *pico_ipv6_link_add(struct pico_device *dev, struct pico_ip6 address, struct pico_ip6 netmask);
+int pico_ipv6_link_del(struct pico_device *dev, struct pico_ip6 address);
+int pico_ipv6_cleanup_links(struct pico_device *dev);
+struct pico_ipv6_link *pico_ipv6_link_istentative(struct pico_ip6 *address);
+struct pico_ipv6_link *pico_ipv6_link_get(struct pico_ip6 *address);
+struct pico_device *pico_ipv6_link_find(struct pico_ip6 *address);
+struct pico_ip6 pico_ipv6_route_get_gateway(struct pico_ip6 *addr);
+struct pico_ip6 *pico_ipv6_source_find(const struct pico_ip6 *dst);
+struct pico_device *pico_ipv6_source_dev_find(const struct pico_ip6 *dst);
+struct pico_ipv6_link *pico_ipv6_link_by_dev(struct pico_device *dev);
+struct pico_ipv6_link *pico_ipv6_link_by_dev_next(struct pico_device *dev, struct pico_ipv6_link *last);
+struct pico_ipv6_link *pico_ipv6_global_get(struct pico_device *dev);
+struct pico_ipv6_link *pico_ipv6_linklocal_get(struct pico_device *dev);
+struct pico_ipv6_link *pico_ipv6_sitelocal_get(struct pico_device *dev);
+struct pico_ipv6_link *pico_ipv6_prefix_configured(struct pico_ip6 *prefix);
+int pico_ipv6_lifetime_set(struct pico_ipv6_link *l, pico_time expire);
+void pico_ipv6_check_lifetime_expired(pico_time now, void *arg);
+int pico_ipv6_dev_routing_enable(struct pico_device *dev);
+int pico_ipv6_dev_routing_disable(struct pico_device *dev);
+void pico_ipv6_router_down(struct pico_ip6 *address);
+#endif
diff --git a/net/picotcp/modules/pico_ipv6_nd.h b/net/picotcp/modules/pico_ipv6_nd.h
new file mode 100644
index 0000000..f709b1e
--- /dev/null
+++ b/net/picotcp/modules/pico_ipv6_nd.h
@@ -0,0 +1,26 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+ *********************************************************************/
+#ifndef _INCLUDE_PICO_ND
+#define _INCLUDE_PICO_ND
+#include "pico_frame.h"
+
+/* RFC constants */
+#define PICO_ND_REACHABLE_TIME         30000 /* msec */
+#define PICO_ND_RETRANS_TIMER          1000 /* msec */
+
+struct pico_nd_hostvars {
+    uint8_t routing;
+    uint8_t hoplimit;
+    pico_time basetime;
+    pico_time reachabletime;
+    pico_time retranstime;
+};
+
+void pico_ipv6_nd_init(void);
+struct pico_eth *pico_ipv6_get_neighbor(struct pico_frame *f);
+void pico_ipv6_nd_postpone(struct pico_frame *f);
+int pico_ipv6_nd_recv(struct pico_frame *f);
+#endif
diff --git a/net/picotcp/modules/pico_mm.h b/net/picotcp/modules/pico_mm.h
new file mode 100644
index 0000000..29366d0
--- /dev/null
+++ b/net/picotcp/modules/pico_mm.h
@@ -0,0 +1,98 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   Authors: Gustav Janssens, Jonas Van Nieuwenberg, Sam Van Den Berge
+ *********************************************************************/
+
+
+#ifndef _INCLUDE_PICO_MM
+#define _INCLUDE_PICO_MM
+
+#include "pico_config.h"
+
+/*
+ * Memory init function, this will create a memory manager instance
+ * A memory_manager page will be created, along with one page of memory
+ * Memory can be asked for via the pico_mem_zalloc function
+ * More memory will be allocated to the memory manager according to its needs
+ * A maximum amount of memory of uint32_t memsize can be allocated
+ */
+void pico_mem_init(uint32_t memsize);
+/*
+ * Memory deinit function, this will free all memory occupied by the current
+ * memory manager instance.
+ */
+void pico_mem_deinit(void);
+/*
+ * Zero-initialized malloc function, will reserve a memory segment of length uint32_t len
+ * This memory will be quickly allocated in a slab of fixed size if possible
+ * or less optimally in the heap for a small variable size
+ * The fixed size of the slabs can be changed dynamically via a statistics engine
+ */
+void*pico_mem_zalloc(size_t len);
+/*
+ * Free function, free a block of memory pointed to by ptr.
+ * Unused memory is only returned to the system's control by pico_mem_cleanup
+ */
+void pico_mem_free(void*ptr);
+/*
+ * This cleanup function will be provided by the memory manager
+ * It can be called during processor downtime
+ * This function will return unused pages to the system's control
+ * Pages are unused if they no longer contain slabs or heap, and they have been idle for a longer time
+ */
+void pico_mem_cleanup(uint32_t timestamp);
+
+
+
+#ifdef PICO_SUPPORT_MM_PROFILING
+/***********************************************************************************************************************
+ ***********************************************************************************************************************
+   MEMORY PROFILING FUNCTIONS
+ ***********************************************************************************************************************
+ ***********************************************************************************************************************/
+/* General info struct */
+struct profiling_data
+{
+    uint32_t free_heap_space;
+    uint32_t free_slab_space;
+    uint32_t used_heap_space;
+    uint32_t used_slab_space;
+};
+
+/*
+ * This function fills up a struct with used and free slab and heap space in the memory manager
+ * The user is responsible for resource managment
+ */
+void pico_mem_profile_collect_data(struct profiling_data*profiling_page_struct);
+
+/*
+ * This function prints the general structure of the memory manager
+ * Printf in this function can be rerouted to send this data over a serial port, or to write it away to memory
+ */
+void pico_mem_profile_scan_data(void);
+
+/*
+ * This function returns the total size that the manager has received from the system
+ * This can give an indication of the total system resource commitment, but keep in mind that
+ * there can be many free blocks in this "used" size
+ * Together with pico_mem_profile_collect_data, this can give a good estimation of the total
+ * resource commitment
+ */
+uint32_t pico_mem_profile_used_size(void);
+
+/*
+ * This function returns a pointer to page 0, the main memory manager housekeeping (struct pico_mem_manager).
+ * This can be used to collect data about the memory in user defined functions.
+ * Use with care!
+ */
+void*pico_mem_profile_manager(void);
+
+/*
+ * paramter manager is a pointer to a struct pico_mem_manager
+ */
+void pico_mem_init_profiling(void*manager, uint32_t memsize);
+#endif /* PICO_SUPPORT_MM_PROFILING */
+
+#endif /* _INCLUDE_PICO_MM */
diff --git a/net/picotcp/modules/pico_nat.h b/net/picotcp/modules/pico_nat.h
new file mode 100644
index 0000000..5237501
--- /dev/null
+++ b/net/picotcp/modules/pico_nat.h
@@ -0,0 +1,90 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   .
+
+   Authors: Kristof Roelants, Simon Maes, Brecht Van Cauwenberghe
+ *********************************************************************/
+
+#ifndef INCLUDE_PICO_NAT
+#define INCLUDE_PICO_NAT
+#include "pico_frame.h"
+
+#define PICO_NAT_PORT_FORWARD_DEL 0
+#define PICO_NAT_PORT_FORWARD_ADD 1
+
+#ifdef PICO_SUPPORT_NAT
+void pico_ipv4_nat_print_table(void);
+int pico_ipv4_nat_find(uint16_t nat_port, struct pico_ip4 *src_addr, uint16_t src_port, uint8_t proto);
+int pico_ipv4_port_forward(struct pico_ip4 nat_addr, uint16_t nat_port, struct pico_ip4 src_addr, uint16_t src_port, uint8_t proto, uint8_t flag);
+
+int pico_ipv4_nat_inbound(struct pico_frame *f, struct pico_ip4 *link_addr);
+int pico_ipv4_nat_outbound(struct pico_frame *f, struct pico_ip4 *link_addr);
+int pico_ipv4_nat_enable(struct pico_ipv4_link *link);
+int pico_ipv4_nat_disable(void);
+int pico_ipv4_nat_is_enabled(struct pico_ip4 *link_addr);
+#else
+
+#define pico_ipv4_nat_print_table() do {} while(0)
+static inline int pico_ipv4_nat_inbound(struct pico_frame *f, struct pico_ip4 *link_addr)
+{
+    (void)f;
+    (void)link_addr;
+    pico_err = PICO_ERR_EPROTONOSUPPORT;
+    return -1;
+}
+
+static inline int pico_ipv4_nat_outbound(struct pico_frame *f, struct pico_ip4 *link_addr)
+{
+    (void)f;
+    (void)link_addr;
+    pico_err = PICO_ERR_EPROTONOSUPPORT;
+    return -1;
+}
+
+static inline int pico_ipv4_nat_enable(struct pico_ipv4_link *link)
+{
+    (void)link;
+    pico_err = PICO_ERR_EPROTONOSUPPORT;
+    return -1;
+}
+
+static inline int pico_ipv4_nat_disable(void)
+{
+    pico_err = PICO_ERR_EPROTONOSUPPORT;
+    return -1;
+}
+
+static inline int pico_ipv4_nat_is_enabled(struct pico_ip4 *link_addr)
+{
+    (void)link_addr;
+    pico_err = PICO_ERR_EPROTONOSUPPORT;
+    return -1;
+}
+
+static inline int pico_ipv4_nat_find(uint16_t nat_port, struct pico_ip4 *src_addr, uint16_t src_port, uint8_t proto)
+{
+    (void)nat_port;
+    (void)src_addr;
+    (void)src_port;
+    (void)proto;
+    pico_err = PICO_ERR_EPROTONOSUPPORT;
+    return -1;
+}
+
+static inline int pico_ipv4_port_forward(struct pico_ip4 nat_addr, uint16_t nat_port, struct pico_ip4 src_addr, uint16_t src_port, uint8_t proto, uint8_t flag)
+{
+    (void)nat_addr;
+    (void)nat_port;
+    (void)src_addr;
+    (void)src_port;
+    (void)proto;
+    (void)flag;
+    pico_err = PICO_ERR_EPROTONOSUPPORT;
+    return -1;
+}
+#endif
+
+#endif /* _INCLUDE_PICO_NAT */
+
diff --git a/net/picotcp/modules/pico_olsr.h b/net/picotcp/modules/pico_olsr.h
new file mode 100644
index 0000000..11c3bf0
--- /dev/null
+++ b/net/picotcp/modules/pico_olsr.h
@@ -0,0 +1,32 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   Authors: Daniele Lacamera
+ *********************************************************************/
+#ifndef PICO_OLSR_H
+#define PICO_OLSR_H
+
+
+/* Objects */
+struct olsr_route_entry
+{
+    struct olsr_route_entry         *next;
+    uint32_t time_left;
+    struct pico_ip4 destination;
+    struct olsr_route_entry         *gateway;
+    struct pico_device              *iface;
+    uint16_t metric;
+    uint8_t link_type;
+    struct olsr_route_entry         *children;
+    uint16_t ansn;
+    uint16_t seq;
+    uint8_t lq, nlq;
+    uint8_t                         *advertised_tc;
+};
+
+
+void pico_olsr_init(void);
+int pico_olsr_add(struct pico_device *dev);
+struct olsr_route_entry *olsr_get_ethentry(struct pico_device *vif);
+#endif
diff --git a/net/picotcp/modules/pico_socket_tcp.h b/net/picotcp/modules/pico_socket_tcp.h
new file mode 100644
index 0000000..6479103
--- /dev/null
+++ b/net/picotcp/modules/pico_socket_tcp.h
@@ -0,0 +1,33 @@
+#ifndef PICO_SOCKET_TCP_H
+#define PICO_SOCKET_TCP_H
+#include "pico_socket.h"
+
+#ifdef PICO_SUPPORT_TCP
+
+/* Functions/macros: conditional! */
+
+# define IS_NAGLE_ENABLED(s) (!(!(!(s->opt_flags & (1 << PICO_SOCKET_OPT_TCPNODELAY)))))
+int pico_setsockopt_tcp(struct pico_socket *s, int option, void *value);
+int pico_getsockopt_tcp(struct pico_socket *s, int option, void *value);
+int pico_socket_tcp_deliver(struct pico_sockport *sp, struct pico_frame *f);
+void pico_socket_tcp_delete(struct pico_socket *s);
+void pico_socket_tcp_cleanup(struct pico_socket *sock);
+struct pico_socket *pico_socket_tcp_open(uint16_t family);
+int pico_socket_tcp_read(struct pico_socket *s, void *buf, uint32_t len);
+void transport_flags_update(struct pico_frame *, struct pico_socket *);
+
+#else
+#   define pico_getsockopt_tcp(...) (-1)
+#   define pico_setsockopt_tcp(...) (-1)
+#   define pico_socket_tcp_deliver(...) (-1)
+#   define IS_NAGLE_ENABLED(s) (0)
+#   define pico_socket_tcp_delete(...) do {} while(0)
+#   define pico_socket_tcp_cleanup(...) do {} while(0)
+#   define pico_socket_tcp_open(f) (NULL)
+#   define pico_socket_tcp_read(...) (-1)
+#   define transport_flags_update(...) do {} while(0)
+
+#endif
+
+
+#endif
diff --git a/net/picotcp/modules/pico_socket_udp.c b/net/picotcp/modules/pico_socket_udp.c
new file mode 100644
index 0000000..ea7e9e1
--- /dev/null
+++ b/net/picotcp/modules/pico_socket_udp.c
@@ -0,0 +1,250 @@
+#include "pico_config.h"
+#include "pico_socket.h"
+#include "pico_udp.h"
+#include "pico_socket_multicast.h"
+#include "pico_ipv4.h"
+#include "pico_ipv6.h"
+#include "pico_socket_udp.h"
+
+#define UDP_FRAME_OVERHEAD (sizeof(struct pico_frame))
+
+
+struct pico_socket *pico_socket_udp_open(void)
+{
+    struct pico_socket *s = NULL;
+#ifdef PICO_SUPPORT_UDP
+    s = pico_udp_open();
+    if (!s) {
+        pico_err = PICO_ERR_ENOMEM;
+        return NULL;
+    }
+
+    s->proto = &pico_proto_udp;
+    s->q_in.overhead = UDP_FRAME_OVERHEAD;
+    s->q_out.overhead = UDP_FRAME_OVERHEAD;
+#endif
+    return s;
+}
+
+
+#ifdef PICO_SUPPORT_IPV4
+static inline int pico_socket_udp_deliver_ipv4_mcast_initial_checks(struct pico_socket *s, struct pico_frame *f)
+{
+    struct pico_ip4 p_dst;
+    struct pico_ipv4_hdr *ip4hdr;
+
+    ip4hdr = (struct pico_ipv4_hdr*)(f->net_hdr);
+    p_dst.addr = ip4hdr->dst.addr;
+    if (pico_ipv4_is_multicast(p_dst.addr) && (pico_socket_mcast_filter(s, (union pico_address *)&ip4hdr->dst, (union pico_address *)&ip4hdr->src) < 0))
+        return -1;
+
+
+    if ((pico_ipv4_link_get(&ip4hdr->src)) && (PICO_SOCKET_GETOPT(s, PICO_SOCKET_OPT_MULTICAST_LOOP) == 0u)) {
+        /* Datagram from ourselves, Loop disabled, discarding. */
+        return -1;
+    }
+
+    return 0;
+}
+
+
+static int pico_socket_udp_deliver_ipv4_mcast(struct pico_socket *s, struct pico_frame *f)
+{
+    struct pico_ip4 s_local;
+    struct pico_frame *cpy;
+    struct pico_device *dev = pico_ipv4_link_find(&s->local_addr.ip4);
+
+    s_local.addr = s->local_addr.ip4.addr;
+
+    if (pico_socket_udp_deliver_ipv4_mcast_initial_checks(s, f) < 0)
+        return 0;
+
+
+
+    if ((s_local.addr == PICO_IPV4_INADDR_ANY) || /* If our local ip is ANY, or.. */
+        (dev == f->dev)) {     /* the source of the bcast packet is a neighbor... */
+        cpy = pico_frame_copy(f);
+        if (!cpy)
+            return -1;
+
+        if (pico_enqueue(&s->q_in, cpy) > 0) {
+            if (s->wakeup)
+                s->wakeup(PICO_SOCK_EV_RD, s);
+        }
+        else
+            pico_frame_discard(cpy);
+    }
+
+    return 0;
+}
+
+static int pico_socket_udp_deliver_ipv4_unicast(struct pico_socket *s, struct pico_frame *f)
+{
+    struct pico_frame *cpy;
+    /* Either local socket is ANY, or matches dst */
+    cpy = pico_frame_copy(f);
+    if (!cpy)
+        return -1;
+
+    if (pico_enqueue(&s->q_in, cpy) > 0) {
+        if (s->wakeup)
+            s->wakeup(PICO_SOCK_EV_RD, s);
+    } else {
+        pico_frame_discard(cpy);
+    }
+
+    return 0;
+}
+
+
+static int pico_socket_udp_deliver_ipv4(struct pico_socket *s, struct pico_frame *f)
+{
+    int ret = 0;
+    struct pico_ip4 s_local, p_dst;
+    struct pico_ipv4_hdr *ip4hdr;
+    ip4hdr = (struct pico_ipv4_hdr*)(f->net_hdr);
+    s_local.addr = s->local_addr.ip4.addr;
+    p_dst.addr = ip4hdr->dst.addr;
+    if ((pico_ipv4_is_broadcast(p_dst.addr)) || pico_ipv4_is_multicast(p_dst.addr)) {
+        ret = pico_socket_udp_deliver_ipv4_mcast(s, f);
+    } else if ((s_local.addr == PICO_IPV4_INADDR_ANY) || (s_local.addr == p_dst.addr)) {
+        ret = pico_socket_udp_deliver_ipv4_unicast(s, f);
+    }
+
+    pico_frame_discard(f);
+    return ret;
+}
+#endif
+
+#ifdef PICO_SUPPORT_IPV6
+static inline int pico_socket_udp_deliver_ipv6_mcast(struct pico_socket *s, struct pico_frame *f)
+{
+    struct pico_ipv6_hdr *ip6hdr;
+    struct pico_frame *cpy;
+    struct pico_device *dev = pico_ipv6_link_find(&s->local_addr.ip6);
+
+    ip6hdr = (struct pico_ipv6_hdr*)(f->net_hdr);
+
+    if ((pico_ipv6_link_get(&ip6hdr->src)) && (PICO_SOCKET_GETOPT(s, PICO_SOCKET_OPT_MULTICAST_LOOP) == 0u)) {
+        /* Datagram from ourselves, Loop disabled, discarding. */
+        return 0;
+    }
+
+
+    if (pico_ipv6_is_unspecified(s->local_addr.ip6.addr) || /* If our local ip is ANY, or.. */
+        (dev == f->dev)) {     /* the source of the bcast packet is a neighbor... */
+        cpy = pico_frame_copy(f);
+        if (!cpy)
+            return -1;
+
+        if (pico_enqueue(&s->q_in, cpy) > 0) {
+            if (s->wakeup)
+                s->wakeup(PICO_SOCK_EV_RD, s);
+        }
+        else
+            pico_frame_discard(cpy);
+    }
+
+    return 0;
+}
+
+static int pico_socket_udp_deliver_ipv6(struct pico_socket *s, struct pico_frame *f)
+{
+    struct pico_ip6 s_local, p_dst;
+    struct pico_ipv6_hdr *ip6hdr;
+    struct pico_frame *cpy;
+    ip6hdr = (struct pico_ipv6_hdr*)(f->net_hdr);
+    s_local = s->local_addr.ip6;
+    p_dst = ip6hdr->dst;
+    if ((pico_ipv6_is_multicast(p_dst.addr))) {
+        return pico_socket_udp_deliver_ipv6_mcast(s, f);
+    } else if (pico_ipv6_is_unspecified(s->local_addr.ip6.addr) || (pico_ipv6_compare(&s_local, &p_dst) == 0))
+    { /* Either local socket is ANY, or matches dst */
+        cpy = pico_frame_copy(f);
+        if (!cpy)
+            return -1;
+
+        if (pico_enqueue(&s->q_in, cpy) > 0) {
+            if (s->wakeup)
+                s->wakeup(PICO_SOCK_EV_RD, s);
+        }
+    }
+
+    pico_frame_discard(f);
+    return 0;
+}
+#endif
+
+
+int pico_socket_udp_deliver(struct pico_sockport *sp, struct pico_frame *f)
+{
+    struct pico_tree_node *index = NULL;
+    struct pico_tree_node *_tmp;
+    struct pico_socket *s = NULL;
+    pico_err = PICO_ERR_EPROTONOSUPPORT;
+    #ifdef PICO_SUPPORT_UDP
+    pico_err = PICO_ERR_NOERR;
+    pico_tree_foreach_safe(index, &sp->socks, _tmp){
+        s = index->keyValue;
+        if (IS_IPV4(f)) { /* IPV4 */
+#ifdef PICO_SUPPORT_IPV4
+            return pico_socket_udp_deliver_ipv4(s, f);
+#endif
+        } else if (IS_IPV6(f)) {
+#ifdef PICO_SUPPORT_IPV6
+            return pico_socket_udp_deliver_ipv6(s, f);
+#endif
+        } else {
+            /* something wrong in the packet header*/
+        }
+    } /* FOREACH */
+    pico_frame_discard(f);
+    if (s)
+        return 0;
+
+    pico_err = PICO_ERR_ENXIO;
+  #endif
+    return -1;
+}
+
+int pico_setsockopt_udp(struct pico_socket *s, int option, void *value)
+{
+    switch(option) {
+    case PICO_SOCKET_OPT_RCVBUF:
+        s->q_in.max_size = (*(uint32_t*)value);
+        return 0;
+    case PICO_SOCKET_OPT_SNDBUF:
+        s->q_out.max_size = (*(uint32_t*)value);
+        return 0;
+    }
+
+    /* switch's default */
+#ifdef PICO_SUPPORT_MCAST
+    return pico_setsockopt_mcast(s, option, value);
+#else
+    pico_err = PICO_ERR_EINVAL;
+    return -1;
+#endif
+}
+
+int pico_getsockopt_udp(struct pico_socket *s, int option, void *value)
+{
+    uint32_t *val = (uint32_t *)value;
+    switch(option) {
+    case PICO_SOCKET_OPT_RCVBUF:
+        *val = s->q_in.max_size;
+        return 0;
+    case PICO_SOCKET_OPT_SNDBUF:
+        *val = s->q_out.max_size;
+        return 0;
+    }
+
+    /* switch's default */
+#ifdef PICO_SUPPORT_MCAST
+    return pico_getsockopt_mcast(s, option, value);
+#else
+    pico_err = PICO_ERR_EINVAL;
+    return -1;
+#endif
+}
+
diff --git a/net/picotcp/modules/pico_socket_udp.h b/net/picotcp/modules/pico_socket_udp.h
new file mode 100644
index 0000000..6b3a4c9
--- /dev/null
+++ b/net/picotcp/modules/pico_socket_udp.h
@@ -0,0 +1,19 @@
+#ifndef PICO_SOCKET_UDP_H
+#define PICO_SOCKET_UDP_H
+
+struct pico_socket *pico_socket_udp_open(void);
+int pico_socket_udp_deliver(struct pico_sockport *sp, struct pico_frame *f);
+
+
+#ifdef PICO_SUPPORT_UDP
+int pico_setsockopt_udp(struct pico_socket *s, int option, void *value);
+int pico_getsockopt_udp(struct pico_socket *s, int option, void *value);
+#   define pico_socket_udp_recv(s, buf, len, addr, port) pico_udp_recv(s, buf, len, addr, port, NULL)
+#else
+#   define pico_socket_udp_recv(...) (0)
+#   define pico_getsockopt_udp(...) (-1)
+#   define pico_setsockopt_udp(...) (-1)
+#endif
+
+
+#endif
diff --git a/net/picotcp/modules/pico_tcp.h b/net/picotcp/modules/pico_tcp.h
new file mode 100644
index 0000000..d5003a8
--- /dev/null
+++ b/net/picotcp/modules/pico_tcp.h
@@ -0,0 +1,102 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   .
+
+ *********************************************************************/
+#ifndef INCLUDE_PICO_TCP
+#define INCLUDE_PICO_TCP
+#include "pico_addressing.h"
+#include "pico_protocol.h"
+#include "pico_socket.h"
+
+extern struct pico_protocol pico_proto_tcp;
+
+PACKED_STRUCT_DEF pico_tcp_hdr {
+    struct pico_trans trans;
+    uint32_t seq;
+    uint32_t ack;
+    uint8_t len;
+    uint8_t flags;
+    uint16_t rwnd;
+    uint16_t crc;
+    uint16_t urgent;
+};
+
+PACKED_STRUCT_DEF tcp_pseudo_hdr_ipv4
+{
+    struct pico_ip4 src;
+    struct pico_ip4 dst;
+    uint16_t tcp_len;
+    uint8_t res;
+    uint8_t proto;
+};
+
+#define PICO_TCPHDR_SIZE 20
+#define PICO_SIZE_TCPOPT_SYN 20
+#define PICO_SIZE_TCPHDR (uint32_t)(sizeof(struct pico_tcp_hdr))
+
+/* TCP options */
+#define PICO_TCP_OPTION_END         0x00
+#define PICO_TCPOPTLEN_END        1u
+#define PICO_TCP_OPTION_NOOP        0x01
+#define PICO_TCPOPTLEN_NOOP       1
+#define PICO_TCP_OPTION_MSS         0x02
+#define PICO_TCPOPTLEN_MSS        4
+#define PICO_TCP_OPTION_WS          0x03
+#define PICO_TCPOPTLEN_WS         3u
+#define PICO_TCP_OPTION_SACK_OK        0x04
+#define PICO_TCPOPTLEN_SACK_OK       2
+#define PICO_TCP_OPTION_SACK        0x05
+#define PICO_TCPOPTLEN_SACK       2 /* Plus the block */
+#define PICO_TCP_OPTION_TIMESTAMP   0x08
+#define PICO_TCPOPTLEN_TIMESTAMP  10u
+
+/* TCP flags */
+#define PICO_TCP_FIN 0x01u
+#define PICO_TCP_SYN 0x02u
+#define PICO_TCP_RST 0x04u
+#define PICO_TCP_PSH 0x08u
+#define PICO_TCP_ACK 0x10u
+#define PICO_TCP_URG 0x20u
+#define PICO_TCP_ECN 0x40u
+#define PICO_TCP_CWR 0x80u
+
+#define PICO_TCP_SYNACK    (PICO_TCP_SYN | PICO_TCP_ACK)
+#define PICO_TCP_PSHACK    (PICO_TCP_PSH | PICO_TCP_ACK)
+#define PICO_TCP_FINACK    (PICO_TCP_FIN | PICO_TCP_ACK)
+#define PICO_TCP_FINPSHACK (PICO_TCP_FIN | PICO_TCP_PSH | PICO_TCP_ACK)
+#define PICO_TCP_RSTACK    (PICO_TCP_RST | PICO_TCP_ACK)
+
+
+PACKED_STRUCT_DEF pico_tcp_option
+{
+    uint8_t kind;
+    uint8_t len;
+};
+
+struct pico_socket *pico_tcp_open(uint16_t family);
+uint32_t pico_tcp_read(struct pico_socket *s, void *buf, uint32_t len);
+int pico_tcp_initconn(struct pico_socket *s);
+int pico_tcp_input(struct pico_socket *s, struct pico_frame *f);
+uint16_t pico_tcp_checksum(struct pico_frame *f);
+uint16_t pico_tcp_checksum_ipv4(struct pico_frame *f);
+#ifdef PICO_SUPPORT_IPV6
+uint16_t pico_tcp_checksum_ipv6(struct pico_frame *f);
+#endif
+uint16_t pico_tcp_overhead(struct pico_socket *s);
+int pico_tcp_output(struct pico_socket *s, int loop_score);
+int pico_tcp_queue_in_is_empty(struct pico_socket *s);
+int pico_tcp_reply_rst(struct pico_frame *f);
+void pico_tcp_cleanup_queues(struct pico_socket *sck);
+void pico_tcp_notify_closing(struct pico_socket *sck);
+void pico_tcp_flags_update(struct pico_frame *f, struct pico_socket *s);
+int pico_tcp_set_bufsize_in(struct pico_socket *s, uint32_t value);
+int pico_tcp_set_bufsize_out(struct pico_socket *s, uint32_t value);
+int pico_tcp_get_bufsize_in(struct pico_socket *s, uint32_t *value);
+int pico_tcp_get_bufsize_out(struct pico_socket *s, uint32_t *value);
+uint16_t pico_tcp_get_socket_mss(struct pico_socket *s);
+int pico_tcp_check_listen_close(struct pico_socket *s);
+
+#endif
diff --git a/net/picotcp/modules/pico_udp.c b/net/picotcp/modules/pico_udp.c
new file mode 100644
index 0000000..b7c61e4
--- /dev/null
+++ b/net/picotcp/modules/pico_udp.c
@@ -0,0 +1,216 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   .
+
+   Authors: Daniele Lacamera
+ *********************************************************************/
+
+
+#include "pico_udp.h"
+#include "pico_config.h"
+#include "pico_eth.h"
+#include "pico_socket.h"
+#include "pico_stack.h"
+
+#define UDP_FRAME_OVERHEAD (sizeof(struct pico_frame))
+#define udp_dbg(...) do {} while(0)
+
+/* Queues */
+static struct pico_queue udp_in = {
+    0
+};
+static struct pico_queue udp_out = {
+    0
+};
+
+
+/* Functions */
+
+uint16_t pico_udp_checksum_ipv4(struct pico_frame *f)
+{
+    struct pico_ipv4_hdr *hdr = (struct pico_ipv4_hdr *) f->net_hdr;
+    struct pico_udp_hdr *udp_hdr = (struct pico_udp_hdr *) f->transport_hdr;
+    struct pico_socket *s = f->sock;
+    struct pico_ipv4_pseudo_hdr pseudo;
+
+    if (s) {
+        /* Case of outgoing frame */
+        udp_dbg("UDP CRC: on outgoing frame\n");
+        pseudo.src.addr = s->local_addr.ip4.addr;
+        pseudo.dst.addr = s->remote_addr.ip4.addr;
+    } else {
+        /* Case of incomming frame */
+        udp_dbg("UDP CRC: on incomming frame\n");
+        pseudo.src.addr = hdr->src.addr;
+        pseudo.dst.addr = hdr->dst.addr;
+    }
+
+    pseudo.zeros = 0;
+    pseudo.proto = PICO_PROTO_UDP;
+    pseudo.len = short_be(f->transport_len);
+
+    return pico_dualbuffer_checksum(&pseudo, sizeof(struct pico_ipv4_pseudo_hdr), udp_hdr, f->transport_len);
+}
+
+#ifdef PICO_SUPPORT_IPV6
+uint16_t pico_udp_checksum_ipv6(struct pico_frame *f)
+{
+    struct pico_ipv6_hdr *ipv6_hdr = (struct pico_ipv6_hdr *)f->net_hdr;
+    struct pico_udp_hdr *udp_hdr = (struct pico_udp_hdr *)f->transport_hdr;
+    struct pico_ipv6_pseudo_hdr pseudo = {
+        .src = {{0}}, .dst = {{0}}, .len = 0, .zero = {0}, .nxthdr = 0
+    };
+    struct pico_socket *s = f->sock;
+    struct pico_remote_endpoint *remote_endpoint = (struct pico_remote_endpoint *)f->info;
+
+    /* XXX If the IPv6 packet contains a Routing header, the Destination
+     *     Address used in the pseudo-header is that of the final destination */
+    if (s) {
+        /* Case of outgoing frame */
+        pseudo.src = s->local_addr.ip6;
+        if (remote_endpoint)
+            pseudo.dst = remote_endpoint->remote_addr.ip6;
+        else
+            pseudo.dst = s->remote_addr.ip6;
+    } else {
+        /* Case of incomming frame */
+        pseudo.src = ipv6_hdr->src;
+        pseudo.dst = ipv6_hdr->dst;
+    }
+
+    pseudo.len = long_be(f->transport_len);
+    pseudo.nxthdr = PICO_PROTO_UDP;
+
+    return pico_dualbuffer_checksum(&pseudo, sizeof(struct pico_ipv6_pseudo_hdr), udp_hdr, f->transport_len);
+}
+#endif
+
+
+
+static int pico_udp_process_out(struct pico_protocol *self, struct pico_frame *f)
+{
+    IGNORE_PARAMETER(self);
+    return (int)pico_network_send(f);
+}
+
+static int pico_udp_push(struct pico_protocol *self, struct pico_frame *f)
+{
+    struct pico_udp_hdr *hdr = (struct pico_udp_hdr *) f->transport_hdr;
+    struct pico_remote_endpoint *remote_endpoint = (struct pico_remote_endpoint *) f->info;
+
+    /* this (fragmented) frame should contain a transport header */
+    if (f->transport_hdr != f->payload) {
+        hdr->trans.sport = f->sock->local_port;
+        if (remote_endpoint) {
+            hdr->trans.dport = remote_endpoint->remote_port;
+        } else {
+            hdr->trans.dport = f->sock->remote_port;
+        }
+
+        hdr->len = short_be(f->transport_len);
+
+        /* do not perform CRC validation. If you want to, a system needs to be
+           implemented to calculate the CRC over the total payload of a
+           fragmented payload
+         */
+        hdr->crc = 0;
+    }
+
+    if (pico_enqueue(self->q_out, f) > 0) {
+        return f->payload_len;
+    } else {
+        return 0;
+    }
+}
+
+/* Interface: protocol definition */
+struct pico_protocol pico_proto_udp = {
+    .name = "udp",
+    .proto_number = PICO_PROTO_UDP,
+    .layer = PICO_LAYER_TRANSPORT,
+    .process_in = pico_transport_process_in,
+    .process_out = pico_udp_process_out,
+    .push = pico_udp_push,
+    .q_in = &udp_in,
+    .q_out = &udp_out,
+};
+
+
+
+struct pico_socket *pico_udp_open(void)
+{
+    struct pico_socket_udp *u = PICO_ZALLOC(sizeof(struct pico_socket_udp));
+    if (!u)
+        return NULL;
+
+    u->mode = PICO_UDP_MODE_UNICAST;
+
+#ifdef PICO_SUPPORT_MCAST
+    u->mc_ttl = PICO_IP_DEFAULT_MULTICAST_TTL;
+    /* enable multicast loopback by default */
+    u->sock.opt_flags |= (1 << PICO_SOCKET_OPT_MULTICAST_LOOP);
+#endif
+
+    return &u->sock;
+}
+
+static void pico_udp_get_msginfo(struct pico_frame *f, struct pico_msginfo *msginfo)
+{
+    msginfo->dev = f->dev;
+    if (!msginfo || !f->net_hdr)
+        return;
+
+    if (IS_IPV4(f)) { /* IPV4 */
+#ifdef PICO_SUPPORT_IPV4
+        struct pico_ipv4_hdr *hdr = (struct pico_ipv4_hdr *)(f->net_hdr);
+        msginfo->ttl = hdr->ttl;
+        msginfo->tos = hdr->tos;
+#endif
+    } else {
+#ifdef PICO_SUPPORT_IPV6
+        struct pico_ipv6_hdr *hdr = (struct pico_ipv6_hdr *)(f->net_hdr);
+        msginfo->ttl = hdr->hop;
+        msginfo->tos = (hdr->vtf >> 20) & 0xFF; /* IPv6 traffic class */
+#endif
+    }
+}
+
+uint16_t pico_udp_recv(struct pico_socket *s, void *buf, uint16_t len, void *src, uint16_t *port, struct pico_msginfo *msginfo)
+{
+    struct pico_frame *f = pico_queue_peek(&s->q_in);
+    if (f) {
+        if(!f->payload_len) {
+            f->payload = f->transport_hdr + sizeof(struct pico_udp_hdr);
+            f->payload_len = (uint16_t)(f->transport_len - sizeof(struct pico_udp_hdr));
+        }
+
+        udp_dbg("expected: %d, got: %d\n", len, f->payload_len);
+        if (src)
+            pico_store_network_origin(src, f);
+
+        if (port) {
+            struct pico_trans *hdr = (struct pico_trans *)f->transport_hdr;
+            *port = hdr->sport;
+        }
+
+        if (msginfo) {
+            pico_udp_get_msginfo(f, msginfo);
+        }
+
+        if (f->payload_len > len) {
+            memcpy(buf, f->payload, len);
+            f->payload += len;
+            f->payload_len = (uint16_t)(f->payload_len - len);
+            return len;
+        } else {
+            uint16_t ret = f->payload_len;
+            memcpy(buf, f->payload, f->payload_len);
+            f = pico_dequeue(&s->q_in);
+            pico_frame_discard(f);
+            return ret;
+        }
+    } else return 0;
+}
+
diff --git a/net/picotcp/modules/pico_udp.h b/net/picotcp/modules/pico_udp.h
new file mode 100644
index 0000000..80b97a9
--- /dev/null
+++ b/net/picotcp/modules/pico_udp.h
@@ -0,0 +1,45 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   .
+
+ *********************************************************************/
+#ifndef INCLUDE_PICO_UDP
+#define INCLUDE_PICO_UDP
+#include "pico_addressing.h"
+#include "pico_protocol.h"
+#include "pico_socket.h"
+#define PICO_UDP_MODE_UNICAST 0x01
+#define PICO_UDP_MODE_MULTICAST 0x02
+#define PICO_UDP_MODE_BROADCAST 0xFF
+
+struct pico_socket_udp
+{
+    struct pico_socket sock;
+    int mode;
+    uint8_t mc_ttl; /* Multicasting TTL */
+};
+
+
+extern struct pico_protocol pico_proto_udp;
+
+PACKED_STRUCT_DEF pico_udp_hdr {
+    struct pico_trans trans;
+    uint16_t len;
+    uint16_t crc;
+};
+#define PICO_UDPHDR_SIZE 8
+
+struct pico_socket *pico_udp_open(void);
+uint16_t pico_udp_recv(struct pico_socket *s, void *buf, uint16_t len, void *src, uint16_t *port, struct pico_msginfo *msginfo);
+uint16_t pico_udp_checksum_ipv4(struct pico_frame *f);
+
+#ifdef PICO_SUPPORT_IPV6
+uint16_t pico_udp_checksum_ipv6(struct pico_frame *f);
+#endif
+
+
+int pico_udp_setsockopt(struct pico_socket *s, int option, void *value);
+
+#endif
diff --git a/net/picotcp/stack/pico_device.c b/net/picotcp/stack/pico_device.c
new file mode 100644
index 0000000..224b37f
--- /dev/null
+++ b/net/picotcp/stack/pico_device.c
@@ -0,0 +1,408 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   .
+
+   Authors: Daniele Lacamera
+ *********************************************************************/
+
+#include "pico_config.h"
+#include "pico_device.h"
+#include "pico_stack.h"
+#include "pico_protocol.h"
+#include "pico_tree.h"
+#include "pico_ipv6.h"
+#include "pico_ipv4.h"
+#include "pico_icmp6.h"
+#include "pico_eth.h"
+#define PICO_DEVICE_DEFAULT_MTU (1500)
+
+struct pico_devices_rr_info {
+    struct pico_tree_node *node_in, *node_out;
+};
+
+static struct pico_devices_rr_info Devices_rr_info = {
+    NULL, NULL
+};
+
+static int pico_dev_cmp(void *ka, void *kb)
+{
+    struct pico_device *a = ka, *b = kb;
+    if (a->hash < b->hash)
+        return -1;
+
+    if (a->hash > b->hash)
+        return 1;
+
+    return 0;
+}
+
+PICO_TREE_DECLARE(Device_tree, pico_dev_cmp);
+
+#ifdef PICO_SUPPORT_IPV6
+static void device_init_ipv6_final(struct pico_device *dev, struct pico_ip6 *linklocal)
+{
+    dev->hostvars.basetime = PICO_ND_REACHABLE_TIME;
+    /* RFC 4861 $6.3.2 value between 0.5 and 1.5 times basetime */
+    dev->hostvars.reachabletime = ((5 + (pico_rand() % 10)) * PICO_ND_REACHABLE_TIME) / 10;
+    dev->hostvars.retranstime = PICO_ND_RETRANS_TIMER;
+    pico_icmp6_router_solicitation(dev, linklocal);
+    dev->hostvars.hoplimit = PICO_IPV6_DEFAULT_HOP;
+}
+
+struct pico_ipv6_link *pico_ipv6_link_add_local(struct pico_device *dev, const struct pico_ip6 *prefix)
+{
+    struct pico_ip6 newaddr;
+    struct pico_ip6 netmask64 = {{0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00}};
+    struct pico_ipv6_link *link;
+    memcpy(newaddr.addr, prefix->addr, PICO_SIZE_IP6);
+    /* modified EUI-64 + invert universal/local bit */
+    newaddr.addr[8] = (dev->eth->mac.addr[0] ^ 0x02);
+    newaddr.addr[9] = dev->eth->mac.addr[1];
+    newaddr.addr[10] = dev->eth->mac.addr[2];
+    newaddr.addr[11] = 0xff;
+    newaddr.addr[12] = 0xfe;
+    newaddr.addr[13] = dev->eth->mac.addr[3];
+    newaddr.addr[14] = dev->eth->mac.addr[4];
+    newaddr.addr[15] = dev->eth->mac.addr[5];
+    link = pico_ipv6_link_add(dev, newaddr, netmask64);
+    if (link) {
+        device_init_ipv6_final(dev, &newaddr);
+    }
+
+    return link;
+}
+#endif
+
+static int device_init_mac(struct pico_device *dev, uint8_t *mac)
+{
+    #ifdef PICO_SUPPORT_IPV6
+    struct pico_ip6 linklocal = {{0xfe, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xaa, 0xaa, 0xaa, 0xff, 0xfe, 0xaa, 0xaa, 0xaa}};
+    #endif
+    dev->eth = PICO_ZALLOC(sizeof(struct pico_ethdev));
+    if (dev->eth) {
+        memcpy(dev->eth->mac.addr, mac, PICO_SIZE_ETH);
+        #ifdef PICO_SUPPORT_IPV6
+        if (pico_ipv6_link_add_local(dev, &linklocal) == NULL) {
+            PICO_FREE(dev->q_in);
+            PICO_FREE(dev->q_out);
+            PICO_FREE(dev->eth);
+            return -1;
+        }
+
+        #endif
+    } else {
+        pico_err = PICO_ERR_ENOMEM;
+        return -1;
+    }
+
+    return 0;
+}
+
+int pico_device_ipv6_random_ll(struct pico_device *dev)
+{
+    #ifdef PICO_SUPPORT_IPV6
+    struct pico_ip6 linklocal = {{0xfe, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xaa, 0xaa, 0xaa, 0xff, 0xfe, 0xaa, 0xaa, 0xaa}};
+    struct pico_ip6 netmask6 = {{0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00}};
+    uint32_t len = (uint32_t)strlen(dev->name);
+    if (strcmp(dev->name, "loop")) {
+        do {
+            /* privacy extension + unset universal/local and individual/group bit */
+            len = pico_rand();
+            linklocal.addr[8]  = (uint8_t)((len & 0xffu) & (uint8_t)(~0x03));
+            linklocal.addr[9]  = (uint8_t)(len >> 8);
+            linklocal.addr[10] = (uint8_t)(len >> 16);
+            linklocal.addr[11] = (uint8_t)(len >> 24);
+            len = pico_rand();
+            linklocal.addr[12] = (uint8_t)len;
+            linklocal.addr[13] = (uint8_t)(len >> 8);
+            linklocal.addr[14] = (uint8_t)(len >> 16);
+            linklocal.addr[15] = (uint8_t)(len >> 24);
+            pico_rand_feed(dev->hash);
+        } while (pico_ipv6_link_get(&linklocal));
+
+        if (pico_ipv6_link_add(dev, linklocal, netmask6) == NULL) {
+            return -1;
+        }
+    }
+
+    #endif
+    return 0;
+}
+
+static int device_init_nomac(struct pico_device *dev)
+{
+    if (pico_device_ipv6_random_ll(dev) < 0) {
+        PICO_FREE(dev->q_in);
+        PICO_FREE(dev->q_out);
+        return -1;
+    }
+
+    dev->eth = NULL;
+    return 0;
+}
+
+int pico_device_init(struct pico_device *dev, const char *name, uint8_t *mac)
+{
+
+    uint32_t len = (uint32_t)strlen(name);
+    int ret = 0;
+    if(len > MAX_DEVICE_NAME)
+        len = MAX_DEVICE_NAME;
+
+    memcpy(dev->name, name, len);
+    dev->hash = pico_hash(dev->name, len);
+
+    Devices_rr_info.node_in  = NULL;
+    Devices_rr_info.node_out = NULL;
+    dev->q_in = PICO_ZALLOC(sizeof(struct pico_queue));
+    if (!dev->q_in)
+        return -1;
+
+    dev->q_out = PICO_ZALLOC(sizeof(struct pico_queue));
+    if (!dev->q_out) {
+        PICO_FREE(dev->q_in);
+        return -1;
+    }
+
+    pico_tree_insert(&Device_tree, dev);
+    if (!dev->mtu)
+        dev->mtu = PICO_DEVICE_DEFAULT_MTU;
+
+    if (mac) {
+        ret = device_init_mac(dev, mac);
+    } else {
+        ret = device_init_nomac(dev);
+    }
+
+    return ret;
+}
+
+static void pico_queue_destroy(struct pico_queue *q)
+{
+    if (q) {
+        pico_queue_empty(q);
+        PICO_FREE(q);
+    }
+}
+
+void pico_device_destroy(struct pico_device *dev)
+{
+    if (dev->destroy)
+        dev->destroy(dev);
+
+    pico_queue_destroy(dev->q_in);
+    pico_queue_destroy(dev->q_out);
+
+    if (dev->eth)
+        PICO_FREE(dev->eth);
+
+#ifdef PICO_SUPPORT_IPV4
+    pico_ipv4_cleanup_links(dev);
+#endif
+#ifdef PICO_SUPPORT_IPV6
+    pico_ipv6_cleanup_links(dev);
+#endif
+    pico_tree_delete(&Device_tree, dev);
+
+    Devices_rr_info.node_in  = NULL;
+    Devices_rr_info.node_out = NULL;
+    PICO_FREE(dev);
+}
+
+static int check_dev_serve_interrupt(struct pico_device *dev, int loop_score)
+{
+    if ((dev->__serving_interrupt) && (dev->dsr)) {
+        /* call dsr routine */
+        loop_score = dev->dsr(dev, loop_score);
+    }
+
+    return loop_score;
+}
+
+static int check_dev_serve_polling(struct pico_device *dev, int loop_score)
+{
+    if (dev->poll) {
+        loop_score = dev->poll(dev, loop_score);
+    }
+
+    return loop_score;
+}
+
+static int devloop_in(struct pico_device *dev, int loop_score)
+{
+    struct pico_frame *f;
+    while(loop_score > 0) {
+        if (dev->q_in->frames <= 0)
+            break;
+
+        /* Receive */
+        f = pico_dequeue(dev->q_in);
+        if (f) {
+            if (dev->eth) {
+                f->datalink_hdr = f->buffer;
+                (void)pico_ethernet_receive(f);
+            } else {
+                f->net_hdr = f->buffer;
+                pico_network_receive(f);
+            }
+
+            loop_score--;
+        }
+    }
+    return loop_score;
+}
+
+static int devloop_sendto_dev(struct pico_device *dev, struct pico_frame *f)
+{
+
+    if (dev->eth) {
+        /* Ethernet: pass management of the frame to the pico_ethernet_send() rdv function */
+        return pico_ethernet_send(f);
+    } else {
+        /* non-ethernet: no post-processing needed */
+        return (dev->send(dev, f->start, (int)f->len) <= 0); /* Return 0 upon success, which is dev->send() > 0 */
+    }
+}
+
+static int devloop_out(struct pico_device *dev, int loop_score)
+{
+    struct pico_frame *f;
+    while(loop_score > 0) {
+        if (dev->q_out->frames <= 0)
+            break;
+
+        /* Device dequeue + send */
+        f = pico_queue_peek(dev->q_out);
+        if (!f)
+            break;
+
+        if (devloop_sendto_dev(dev, f) == 0) { /* success. */
+            f = pico_dequeue(dev->q_out);
+            pico_frame_discard(f); /* SINGLE POINT OF DISCARD for OUTGOING FRAMES */
+            loop_score--;
+        } else
+            break; /* Don't discard */
+
+    }
+    return loop_score;
+}
+
+static int devloop(struct pico_device *dev, int loop_score, int direction)
+{
+    /* If device supports interrupts, read the value of the condition and trigger the dsr */
+    loop_score = check_dev_serve_interrupt(dev, loop_score);
+
+    /* If device supports polling, give control. Loop score is managed internally,
+     * remaining loop points are returned. */
+    loop_score = check_dev_serve_polling(dev, loop_score);
+
+    if (direction == PICO_LOOP_DIR_OUT)
+        loop_score = devloop_out(dev, loop_score);
+    else
+        loop_score = devloop_in(dev, loop_score);
+
+    return loop_score;
+}
+
+
+static struct pico_tree_node *pico_dev_roundrobin_start(int direction)
+{
+    if (Devices_rr_info.node_in == NULL)
+        Devices_rr_info.node_in = pico_tree_firstNode(Device_tree.root);
+
+    if (Devices_rr_info.node_out == NULL)
+        Devices_rr_info.node_out = pico_tree_firstNode(Device_tree.root);
+
+    if (direction == PICO_LOOP_DIR_IN)
+        return Devices_rr_info.node_in;
+    else
+        return Devices_rr_info.node_out;
+}
+
+static void pico_dev_roundrobin_end(int direction, struct pico_tree_node *last)
+{
+    if (direction == PICO_LOOP_DIR_IN)
+        Devices_rr_info.node_in = last;
+    else
+        Devices_rr_info.node_out = last;
+}
+
+#define DEV_LOOP_MIN  16
+
+int pico_devices_loop(int loop_score, int direction)
+{
+    struct pico_device *start, *next;
+    struct pico_tree_node *next_node  = pico_dev_roundrobin_start(direction);
+
+    if (!next_node)
+        return loop_score;
+
+    next = next_node->keyValue;
+    start = next;
+
+    /* round-robin all devices, break if traversed all devices */
+    while ((loop_score > DEV_LOOP_MIN) && (next != NULL)) {
+        loop_score = devloop(next, loop_score, direction);
+        next_node = pico_tree_next(next_node);
+        next = next_node->keyValue;
+        if (next == NULL)
+        {
+            next_node = pico_tree_firstNode(Device_tree.root);
+            next = next_node->keyValue;
+        }
+
+        if (next == start)
+            break;
+    }
+    pico_dev_roundrobin_end(direction, next_node);
+    return loop_score;
+}
+
+struct pico_device *pico_get_device(const char*name)
+{
+    struct pico_device *dev;
+    struct pico_tree_node *index;
+    pico_tree_foreach(index, &Device_tree){
+        dev = index->keyValue;
+        if(strcmp(name, dev->name) == 0)
+            return dev;
+    }
+    return NULL;
+}
+
+int32_t pico_device_broadcast(struct pico_frame *f)
+{
+    struct pico_tree_node *index;
+    int32_t ret = -1;
+
+    pico_tree_foreach(index, &Device_tree)
+    {
+        struct pico_device *dev = index->keyValue;
+        if(dev != f->dev)
+        {
+            struct pico_frame *copy = pico_frame_copy(f);
+
+            if(!copy)
+                break;
+
+            copy->dev = dev;
+            copy->dev->send(copy->dev, copy->start, (int)copy->len);
+            pico_frame_discard(copy);
+        }
+        else
+        {
+            ret = f->dev->send(f->dev, f->start, (int)f->len);
+        }
+    }
+    return ret;
+}
+
+int pico_device_link_state(struct pico_device *dev)
+{
+    if (!dev->link_state)
+        return 1; /* Not supported, assuming link is always up */
+
+    return dev->link_state(dev);
+}
diff --git a/net/picotcp/stack/pico_frame.c b/net/picotcp/stack/pico_frame.c
new file mode 100644
index 0000000..482edfe
--- /dev/null
+++ b/net/picotcp/stack/pico_frame.c
@@ -0,0 +1,286 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   .
+
+   Authors: Daniele Lacamera
+ *********************************************************************/
+
+
+#include "pico_config.h"
+#include "pico_frame.h"
+#include "pico_protocol.h"
+#include "pico_stack.h"
+
+#ifdef PICO_SUPPORT_DEBUG_MEMORY
+static int n_frames_allocated;
+#endif
+
+/** frame alloc/dealloc/copy **/
+void pico_frame_discard(struct pico_frame *f)
+{
+    if (!f)
+        return;
+
+    (*f->usage_count)--;
+    if (*f->usage_count <= 0) {
+        if (f->flags & PICO_FRAME_FLAG_EXT_USAGE_COUNTER)
+            PICO_FREE(f->usage_count);
+
+#ifdef PICO_SUPPORT_DEBUG_MEMORY
+        dbg("Discarded buffer @%p, caller: %p\n", f->buffer, __builtin_return_address(3));
+        dbg("DEBUG MEMORY: %d frames in use.\n", --n_frames_allocated);
+#endif
+        if (!(f->flags & PICO_FRAME_FLAG_EXT_BUFFER))
+            PICO_FREE(f->buffer);
+        else if (f->notify_free)
+            f->notify_free(f->buffer);
+
+        if (f->info)
+            PICO_FREE(f->info);
+    }
+
+#ifdef PICO_SUPPORT_DEBUG_MEMORY
+    else {
+        dbg("Removed frame @%p(copy), usage count now: %d\n", f, *f->usage_count);
+    }
+#endif
+    PICO_FREE(f);
+}
+
+struct pico_frame *pico_frame_copy(struct pico_frame *f)
+{
+    struct pico_frame *new = PICO_ZALLOC(sizeof(struct pico_frame));
+    if (!new)
+        return NULL;
+
+    memcpy(new, f, sizeof(struct pico_frame));
+    *(new->usage_count) += 1;
+#ifdef PICO_SUPPORT_DEBUG_MEMORY
+    dbg("Copied frame @%p, into %p, usage count now: %d\n", f, new, *new->usage_count);
+#endif
+    new->next = NULL;
+    return new;
+}
+
+
+static struct pico_frame *pico_frame_do_alloc(uint32_t size, int zerocopy, int ext_buffer)
+{
+    struct pico_frame *p = PICO_ZALLOC(sizeof(struct pico_frame));
+    uint32_t frame_buffer_size = size;
+    if (!p)
+        return NULL;
+
+    if (ext_buffer && !zerocopy) {
+        /* external buffer implies zerocopy flag! */
+        PICO_FREE(p);
+        return NULL;
+    }
+
+    if (!zerocopy) {
+        unsigned int align = size % sizeof(uint32_t);
+        /* Ensure that usage_count starts on an aligned address */
+        if (align) {
+            frame_buffer_size += (uint32_t)sizeof(uint32_t) - align;
+        }
+
+        p->buffer = PICO_ZALLOC(frame_buffer_size + sizeof(uint32_t));
+        if (!p->buffer) {
+            PICO_FREE(p);
+            return NULL;
+        }
+
+        p->usage_count = (uint32_t *)(((uint8_t*)p->buffer) + frame_buffer_size);
+    } else {
+        p->buffer = NULL;
+        p->flags |= PICO_FRAME_FLAG_EXT_USAGE_COUNTER;
+        p->usage_count = PICO_ZALLOC(sizeof(uint32_t));
+        if (!p->usage_count) {
+            PICO_FREE(p);
+            return NULL;
+        }
+    }
+
+
+    p->buffer_len = size;
+
+    /* By default, frame content is the full buffer. */
+    p->start = p->buffer;
+    p->len = p->buffer_len;
+    *p->usage_count = 1;
+
+    if (ext_buffer)
+        p->flags |= PICO_FRAME_FLAG_EXT_BUFFER;
+
+#ifdef PICO_SUPPORT_DEBUG_MEMORY
+    dbg("Allocated buffer @%p, len= %d caller: %p\n", p->buffer, p->buffer_len, __builtin_return_address(2));
+    dbg("DEBUG MEMORY: %d frames in use.\n", ++n_frames_allocated);
+#endif
+    return p;
+}
+
+struct pico_frame *pico_frame_alloc(uint32_t size)
+{
+    return pico_frame_do_alloc(size, 0, 0);
+}
+
+int pico_frame_grow(struct pico_frame *f, uint32_t size)
+{
+    uint8_t *oldbuf;
+    uint32_t usage_count, *p_old_usage;
+    uint32_t frame_buffer_size;
+    uint32_t oldsize;
+    unsigned int align;
+    int addr_diff = 0;
+
+    if (!f || (size < f->buffer_len)) {
+        return -1;
+    }
+
+    align = size % sizeof(uint32_t);
+    frame_buffer_size = size;
+    if (align) {
+        frame_buffer_size += (uint32_t)sizeof(uint32_t) - align;
+    }
+
+    oldbuf = f->buffer;
+    oldsize = f->buffer_len;
+    usage_count = *(f->usage_count);
+    p_old_usage = f->usage_count;
+    f->buffer = PICO_ZALLOC(frame_buffer_size + sizeof(uint32_t));
+    if (!f->buffer) {
+        f->buffer = oldbuf;
+        return -1;
+    }
+
+    f->usage_count = (uint32_t *)(((uint8_t*)f->buffer) + frame_buffer_size);
+    *f->usage_count = usage_count;
+    f->buffer_len = size;
+    memcpy(f->buffer, oldbuf, oldsize);
+
+    /* Update hdr fields to new buffer*/
+    addr_diff = (int)(f->buffer - oldbuf);
+    f->net_hdr += addr_diff;
+    f->datalink_hdr += addr_diff;
+    f->transport_hdr += addr_diff;
+    f->app_hdr += addr_diff;
+    f->start += addr_diff;
+    f->payload += addr_diff;
+
+    if (f->flags & PICO_FRAME_FLAG_EXT_USAGE_COUNTER)
+        PICO_FREE(p_old_usage);
+
+    if (!(f->flags & PICO_FRAME_FLAG_EXT_BUFFER))
+        PICO_FREE(oldbuf);
+    else if (f->notify_free)
+        f->notify_free(oldbuf);
+
+    f->flags = 0;
+    /* Now, the frame is not zerocopy anymore, and the usage counter has been moved within it */
+    return 0;
+}
+
+struct pico_frame *pico_frame_alloc_skeleton(uint32_t size, int ext_buffer)
+{
+    return pico_frame_do_alloc(size, 1, ext_buffer);
+}
+
+int pico_frame_skeleton_set_buffer(struct pico_frame *f, void *buf)
+{
+    if (!buf)
+        return -1;
+
+    f->buffer = (uint8_t *) buf;
+    f->start = f->buffer;
+    return 0;
+}
+
+struct pico_frame *pico_frame_deepcopy(struct pico_frame *f)
+{
+    struct pico_frame *new = pico_frame_alloc(f->buffer_len);
+    int addr_diff;
+    unsigned char *buf;
+    uint32_t *uc;
+    if (!new)
+        return NULL;
+
+    /* Save the two key pointers... */
+    buf = new->buffer;
+    uc  = new->usage_count;
+
+    /* Overwrite all fields with originals */
+    memcpy(new, f, sizeof(struct pico_frame));
+
+    /* ...restore the two key pointers */
+    new->buffer = buf;
+    new->usage_count = uc;
+
+    /* Update in-buffer pointers with offset */
+    addr_diff = (int)(new->buffer - f->buffer);
+    new->datalink_hdr += addr_diff;
+    new->net_hdr += addr_diff;
+    new->transport_hdr += addr_diff;
+    new->app_hdr += addr_diff;
+    new->start += addr_diff;
+    new->payload += addr_diff;
+
+#ifdef PICO_SUPPORT_DEBUG_MEMORY
+    dbg("Deep-Copied frame @%p, into %p, usage count now: %d\n", f, new, *new->usage_count);
+#endif
+    new->next = NULL;
+    return new;
+}
+
+
+static inline uint32_t pico_checksum_adder(uint32_t sum, void *data, uint32_t len)
+{
+    uint16_t *buf = (uint16_t *)data;
+    uint16_t *stop;
+
+    if (len & 0x01) {
+        --len;
+#ifdef PICO_BIGENDIAN
+        sum += (((uint8_t *)data)[len]) << 8;
+#else
+        sum += ((uint8_t *)data)[len];
+#endif
+    }
+
+    stop = (uint16_t *)(((uint8_t *)data) + len);
+
+    while (buf < stop) {
+        sum += *buf++;
+    }
+    return sum;
+}
+
+static inline uint16_t pico_checksum_finalize(uint32_t sum)
+{
+    while (sum >> 16) { /* a second carry is possible! */
+        sum = (sum & 0x0000FFFF) + (sum >> 16);
+    }
+    return short_be((uint16_t) ~sum);
+}
+
+/**
+ * Calculate checksum of a given string
+ */
+uint16_t pico_checksum(void *inbuf, uint32_t len)
+{
+    uint32_t sum;
+
+    sum = pico_checksum_adder(0, inbuf, len);
+    return pico_checksum_finalize(sum);
+}
+
+/* WARNING: len1 MUST be an EVEN number */
+uint16_t pico_dualbuffer_checksum(void *inbuf1, uint32_t len1, void *inbuf2, uint32_t len2)
+{
+    uint32_t sum;
+
+    sum = pico_checksum_adder(0, inbuf1, len1);
+    sum = pico_checksum_adder(sum, inbuf2, len2);
+    return pico_checksum_finalize(sum);
+}
+
diff --git a/net/picotcp/stack/pico_protocol.c b/net/picotcp/stack/pico_protocol.c
new file mode 100644
index 0000000..98d2a20
--- /dev/null
+++ b/net/picotcp/stack/pico_protocol.c
@@ -0,0 +1,214 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   .
+
+   Authors: Daniele Lacamera
+ *********************************************************************/
+
+
+#include "pico_protocol.h"
+#include "pico_tree.h"
+
+struct pico_proto_rr
+{
+    struct pico_tree *t;
+    struct pico_tree_node *node_in, *node_out;
+};
+
+
+static int pico_proto_cmp(void *ka, void *kb)
+{
+    struct pico_protocol *a = ka, *b = kb;
+    if (a->hash < b->hash)
+        return -1;
+
+    if (a->hash > b->hash)
+        return 1;
+
+    return 0;
+}
+
+PICO_TREE_DECLARE(Datalink_proto_tree, pico_proto_cmp);
+PICO_TREE_DECLARE(Network_proto_tree, pico_proto_cmp);
+PICO_TREE_DECLARE(Transport_proto_tree, pico_proto_cmp);
+PICO_TREE_DECLARE(Socket_proto_tree, pico_proto_cmp);
+
+/* Static variables to keep track of the round robin loop */
+static struct pico_proto_rr proto_rr_datalink   = {
+    &Datalink_proto_tree,     NULL, NULL
+};
+static struct pico_proto_rr proto_rr_network    = {
+    &Network_proto_tree,      NULL, NULL
+};
+static struct pico_proto_rr proto_rr_transport  = {
+    &Transport_proto_tree,    NULL, NULL
+};
+static struct pico_proto_rr proto_rr_socket     = {
+    &Socket_proto_tree,       NULL, NULL
+};
+
+static int proto_loop_in(struct pico_protocol *proto, int loop_score)
+{
+    struct pico_frame *f;
+    while(loop_score > 0) {
+        if (proto->q_in->frames <= 0)
+            break;
+
+        f = pico_dequeue(proto->q_in);
+        if ((f) && (proto->process_in(proto, f) > 0)) {
+            loop_score--;
+        }
+    }
+    return loop_score;
+}
+
+static int proto_loop_out(struct pico_protocol *proto, int loop_score)
+{
+    struct pico_frame *f;
+    while(loop_score > 0) {
+        if (proto->q_out->frames <= 0)
+            break;
+
+        f = pico_dequeue(proto->q_out);
+        if ((f) && (proto->process_out(proto, f) > 0)) {
+            loop_score--;
+        }
+    }
+    return loop_score;
+}
+
+static int proto_loop(struct pico_protocol *proto, int loop_score, int direction)
+{
+
+    if (direction == PICO_LOOP_DIR_IN)
+        loop_score = proto_loop_in(proto, loop_score);
+    else if (direction == PICO_LOOP_DIR_OUT)
+        loop_score = proto_loop_out(proto, loop_score);
+
+    return loop_score;
+}
+
+static struct pico_tree_node *roundrobin_init(struct pico_proto_rr *rr, int direction)
+{
+    struct pico_tree_node *next_node = NULL;
+    /* Initialization (takes place only once) */
+    if (rr->node_in == NULL)
+        rr->node_in = pico_tree_firstNode(rr->t->root);
+
+    if (rr->node_out == NULL)
+        rr->node_out = pico_tree_firstNode(rr->t->root);
+
+    if (direction == PICO_LOOP_DIR_IN)
+        next_node = rr->node_in;
+    else
+        next_node = rr->node_out;
+
+    return next_node;
+}
+
+static void roundrobin_end(struct pico_proto_rr *rr, int direction, struct pico_tree_node *last)
+{
+    if (direction == PICO_LOOP_DIR_IN)
+        rr->node_in = last;
+    else
+        rr->node_out = last;
+}
+
+static int pico_protocol_generic_loop(struct pico_proto_rr *rr, int loop_score, int direction)
+{
+    struct pico_protocol *start, *next;
+    struct pico_tree_node *next_node = roundrobin_init(rr, direction);
+
+    if (!next_node)
+        return loop_score;
+
+    next = next_node->keyValue;
+
+    /* init start node */
+    start = next;
+
+    /* round-robin all layer protocols, break if traversed all protocols */
+    while (loop_score > 1 && next != NULL) {
+        loop_score = proto_loop(next, loop_score, direction);
+        next_node = pico_tree_next(next_node);
+        next = next_node->keyValue;
+        if (next == NULL)
+        {
+            next_node = pico_tree_firstNode(rr->t->root);
+            next = next_node->keyValue;
+        }
+
+        if (next == start)
+            break;
+    }
+    roundrobin_end(rr, direction, next_node);
+    return loop_score;
+}
+
+int pico_protocol_datalink_loop(int loop_score, int direction)
+{
+    return pico_protocol_generic_loop(&proto_rr_datalink, loop_score, direction);
+}
+
+int pico_protocol_network_loop(int loop_score, int direction)
+{
+    return pico_protocol_generic_loop(&proto_rr_network, loop_score, direction);
+}
+
+int pico_protocol_transport_loop(int loop_score, int direction)
+{
+    return pico_protocol_generic_loop(&proto_rr_transport, loop_score, direction);
+}
+
+int pico_protocol_socket_loop(int loop_score, int direction)
+{
+    return pico_protocol_generic_loop(&proto_rr_socket, loop_score, direction);
+}
+
+int pico_protocols_loop(int loop_score)
+{
+/*
+   loop_score = pico_protocol_datalink_loop(loop_score);
+   loop_score = pico_protocol_network_loop(loop_score);
+   loop_score = pico_protocol_transport_loop(loop_score);
+   loop_score = pico_protocol_socket_loop(loop_score);
+ */
+    return loop_score;
+}
+
+static void proto_layer_rr_reset(struct pico_proto_rr *rr)
+{
+    rr->node_in = NULL;
+    rr->node_out = NULL;
+}
+
+void pico_protocol_init(struct pico_protocol *p)
+{
+    if (!p)
+        return;
+
+    p->hash = pico_hash(p->name, (uint32_t)strlen(p->name));
+    switch (p->layer) {
+    case PICO_LAYER_DATALINK:
+        pico_tree_insert(&Datalink_proto_tree, p);
+        proto_layer_rr_reset(&proto_rr_datalink);
+        break;
+    case PICO_LAYER_NETWORK:
+        pico_tree_insert(&Network_proto_tree, p);
+        proto_layer_rr_reset(&proto_rr_network);
+        break;
+    case PICO_LAYER_TRANSPORT:
+        pico_tree_insert(&Transport_proto_tree, p);
+        proto_layer_rr_reset(&proto_rr_transport);
+        break;
+    case PICO_LAYER_SOCKET:
+        pico_tree_insert(&Socket_proto_tree, p);
+        proto_layer_rr_reset(&proto_rr_socket);
+        break;
+    }
+    dbg("Protocol %s registered (layer: %d).\n", p->name, p->layer);
+
+}
+
diff --git a/net/picotcp/stack/pico_socket.c b/net/picotcp/stack/pico_socket.c
new file mode 100644
index 0000000..cd0be1e
--- /dev/null
+++ b/net/picotcp/stack/pico_socket.c
@@ -0,0 +1,2213 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+
+   Authors: Daniele Lacamera
+ *********************************************************************/
+
+
+#include "pico_config.h"
+#include "pico_queue.h"
+#include "pico_socket.h"
+#include "pico_ipv4.h"
+#include "pico_ipv6.h"
+#include "pico_udp.h"
+#include "pico_tcp.h"
+#include "pico_stack.h"
+#include "pico_icmp4.h"
+#include "pico_nat.h"
+#include "pico_tree.h"
+#include "pico_device.h"
+#include "pico_socket_multicast.h"
+#include "pico_socket_tcp.h"
+#include "pico_socket_udp.h"
+
+#if defined (PICO_SUPPORT_IPV4) || defined (PICO_SUPPORT_IPV6)
+#if defined (PICO_SUPPORT_TCP) || defined (PICO_SUPPORT_UDP)
+
+
+#define PROTO(s) ((s)->proto->proto_number)
+#define PICO_MIN_MSS (1280)
+#define TCP_STATE(s) (s->state & PICO_SOCKET_STATE_TCP)
+
+#ifdef PICO_SUPPORT_MUTEX
+static void *Mutex = NULL;
+#endif
+
+
+#define PROTO(s) ((s)->proto->proto_number)
+
+#define PICO_SOCKET_MTU 1480 /* Ethernet MTU(1500) - IP header size(20) */
+
+# define frag_dbg(...) do {} while(0)
+
+
+static struct pico_sockport *sp_udp = NULL, *sp_tcp = NULL;
+
+struct pico_frame *pico_socket_frame_alloc(struct pico_socket *s, uint16_t len);
+
+static int socket_cmp_family(struct pico_socket *a, struct pico_socket *b)
+{
+    uint32_t a_is_ip6 = is_sock_ipv6(a);
+    uint32_t b_is_ip6 = is_sock_ipv6(b);
+    (void)a;
+    (void)b;
+    if (a_is_ip6 < b_is_ip6)
+        return -1;
+
+    if (a_is_ip6 > b_is_ip6)
+        return 1;
+
+    return 0;
+}
+
+
+static int socket_cmp_ipv6(struct pico_socket *a, struct pico_socket *b)
+{
+    int ret = 0;
+    (void)a;
+    (void)b;
+#ifdef PICO_SUPPORT_IPV6
+    if (!is_sock_ipv6(a) || !is_sock_ipv6(b))
+        return 0;
+
+    if ((memcmp(a->local_addr.ip6.addr, PICO_IP6_ANY, PICO_SIZE_IP6) == 0) || (memcmp(b->local_addr.ip6.addr, PICO_IP6_ANY, PICO_SIZE_IP6) == 0))
+        ret = 0;
+    else
+        ret = memcmp(a->local_addr.ip6.addr, b->local_addr.ip6.addr, PICO_SIZE_IP6);
+
+#endif
+    return ret;
+}
+
+static int socket_cmp_ipv4(struct pico_socket *a, struct pico_socket *b)
+{
+    int ret = 0;
+    (void)a;
+    (void)b;
+    if (!is_sock_ipv4(a) || !is_sock_ipv4(b))
+        return 0;
+
+#ifdef PICO_SUPPORT_IPV4
+    if ((a->local_addr.ip4.addr == PICO_IP4_ANY) || (b->local_addr.ip4.addr == PICO_IP4_ANY))
+        ret = 0;
+    else
+        ret = (int)(a->local_addr.ip4.addr - b->local_addr.ip4.addr);
+
+#endif
+    return ret;
+}
+
+static int socket_cmp_remotehost(struct pico_socket *a, struct pico_socket *b)
+{
+    int ret = 0;
+    if (is_sock_ipv6(a))
+        ret = memcmp(a->remote_addr.ip6.addr, b->remote_addr.ip6.addr, PICO_SIZE_IP6);
+    else
+        ret = (int)(a->remote_addr.ip4.addr - b->remote_addr.ip4.addr);
+
+    return ret;
+}
+
+static int socket_cmp_addresses(struct pico_socket *a, struct pico_socket *b)
+{
+    int ret = 0;
+    /* At this point, sort by local host */
+    ret = socket_cmp_ipv6(a, b);
+
+    if (ret == 0)
+        ret = socket_cmp_ipv4(a, b);
+
+    /* Sort by remote host */
+    if (ret == 0)
+        ret = socket_cmp_remotehost(a, b);
+
+    return 0;
+}
+
+static int socket_cmp(void *ka, void *kb)
+{
+    struct pico_socket *a = ka, *b = kb;
+    int ret = 0;
+
+    /* First, order by network family */
+    ret = socket_cmp_family(a, b);
+
+    /* Then, compare by source/destination addresses */
+    if (ret == 0)
+        ret = socket_cmp_addresses(a, b);
+
+    /* And finally by remote port. The two sockets are coincident if the quad is the same. */
+    if (ret == 0)
+        ret = b->remote_port - a->remote_port;
+
+    return ret;
+}
+
+
+#define INIT_SOCKPORT { {&LEAF, socket_cmp}, 0, 0 }
+
+static int sockport_cmp(void *ka, void *kb)
+{
+    struct pico_sockport *a = ka, *b = kb;
+    if (a->number < b->number)
+        return -1;
+
+    if (a->number > b->number)
+        return 1;
+
+    return 0;
+}
+
+PICO_TREE_DECLARE(UDPTable, sockport_cmp);
+PICO_TREE_DECLARE(TCPTable, sockport_cmp);
+
+struct pico_sockport *pico_get_sockport(uint16_t proto, uint16_t port)
+{
+    struct pico_sockport test = INIT_SOCKPORT;
+    test.number = port;
+
+    if (proto == PICO_PROTO_UDP)
+        return pico_tree_findKey(&UDPTable, &test);
+
+    else if (proto == PICO_PROTO_TCP)
+        return pico_tree_findKey(&TCPTable, &test);
+
+    else return NULL;
+}
+
+#ifdef PICO_SUPPORT_IPV4
+
+static int pico_port_in_use_by_nat(uint16_t proto, uint16_t port)
+{
+    int ret = 0;
+    (void) proto;
+    (void) port;
+#ifdef PICO_SUPPORT_NAT
+    if (pico_ipv4_nat_find(port, NULL, 0, (uint8_t)proto)) {
+        dbg("In use by nat....\n");
+        ret = 1;
+    }
+
+#endif
+    return ret;
+}
+
+static int pico_port_in_use_with_this_ipv4_address(struct pico_sockport *sp, struct pico_ip4 ip)
+{
+    if (sp) {
+        struct pico_ip4 *s_local;
+        struct pico_tree_node *idx;
+        struct pico_socket *s;
+        pico_tree_foreach(idx, &sp->socks) {
+            s = idx->keyValue;
+            if (s->net == &pico_proto_ipv4) {
+                s_local = (struct pico_ip4*) &s->local_addr;
+                if ((s_local->addr == PICO_IPV4_INADDR_ANY) || (s_local->addr == ip.addr)) {
+                    return 1;
+                }
+            }
+        }
+    }
+
+    return 0;
+}
+
+
+static int pico_port_in_use_ipv4(struct pico_sockport *sp, void *addr)
+{
+    struct pico_ip4 ip;
+    /* IPv4 */
+    if (addr)
+        ip.addr = ((struct pico_ip4 *)addr)->addr;
+    else
+        ip.addr = PICO_IPV4_INADDR_ANY;
+
+    if (ip.addr == PICO_IPV4_INADDR_ANY) {
+        if (!sp)
+            return 0;
+        else {
+            dbg("In use, and asked for ANY\n");
+            return 1;
+        }
+    }
+
+    return pico_port_in_use_with_this_ipv4_address(sp, ip);
+}
+#endif
+
+#ifdef PICO_SUPPORT_IPV6
+static int pico_port_in_use_with_this_ipv6_address(struct pico_sockport *sp, struct pico_ip6 ip)
+{
+    if (sp) {
+        struct pico_ip6 *s_local;
+        struct pico_tree_node *idx;
+        struct pico_socket *s;
+        pico_tree_foreach(idx, &sp->socks) {
+            s = idx->keyValue;
+            if (s->net == &pico_proto_ipv6) {
+                s_local = (struct pico_ip6*) &s->local_addr;
+                if ((pico_ipv6_is_unspecified(s_local->addr)) || (!memcmp(s_local->addr, ip.addr, PICO_SIZE_IP6))) {
+                    return 1;
+                }
+            }
+        }
+    }
+
+    return 0;
+}
+
+static int pico_port_in_use_ipv6(struct pico_sockport *sp, void *addr)
+{
+    struct pico_ip6 ip;
+    /* IPv6 */
+    if (addr)
+        memcpy(ip.addr, ((struct pico_ip6 *)addr)->addr, sizeof(struct pico_ip6));
+    else
+        memcpy(ip.addr, PICO_IP6_ANY, sizeof(struct pico_ip6));
+
+    if (memcmp(ip.addr, PICO_IP6_ANY, sizeof(struct pico_ip6)) ==  0) {
+        if (!sp)
+            return 0;
+        else {
+            dbg("In use, and asked for ANY\n");
+            return 1;
+        }
+    }
+
+    return pico_port_in_use_with_this_ipv6_address(sp, ip);
+}
+#endif
+
+
+
+static int pico_generic_port_in_use(uint16_t proto, uint16_t port, struct pico_sockport *sp, void *addr, void *net)
+{
+#ifdef PICO_SUPPORT_IPV4
+    if (net == &pico_proto_ipv4)
+    {
+        if (pico_port_in_use_by_nat(proto, port)) {
+            return 1;
+        }
+
+        if (pico_port_in_use_ipv4(sp, addr)) {
+            return 1;
+        }
+    }
+
+#endif
+
+#ifdef PICO_SUPPORT_IPV6
+    if (net == &pico_proto_ipv6)
+    {
+        if (pico_port_in_use_ipv6(sp, addr)) {
+            return 1;
+        }
+    }
+
+#endif
+
+    return 0;
+}
+
+int pico_is_port_free(uint16_t proto, uint16_t port, void *addr, void *net)
+{
+    struct pico_sockport *sp;
+    sp = pico_get_sockport(proto, port);
+
+    if (pico_generic_port_in_use(proto, port, sp, addr, net))
+        return 0;
+
+    return 1;
+}
+
+static int pico_check_socket(struct pico_socket *s)
+{
+    struct pico_sockport *test;
+    struct pico_socket *found;
+    struct pico_tree_node *index;
+
+    test = pico_get_sockport(PROTO(s), s->local_port);
+
+    if (!test) {
+        return -1;
+    }
+
+    pico_tree_foreach(index, &test->socks){
+        found = index->keyValue;
+        if (s == found) {
+            return 0;
+        }
+    }
+
+    return -1;
+}
+
+struct pico_socket *pico_sockets_find(uint16_t local, uint16_t remote)
+{
+    struct pico_socket *sock = NULL;
+    struct pico_tree_node *index = NULL;
+    struct pico_sockport *sp = NULL;
+
+    sp = pico_get_sockport(PICO_PROTO_TCP, local);
+    if(sp)
+    {
+        pico_tree_foreach(index, &sp->socks)
+        {
+            if(((struct pico_socket *)index->keyValue)->remote_port == remote)
+            {
+                sock = (struct pico_socket *)index->keyValue;
+                break;
+            }
+        }
+    }
+
+    return sock;
+}
+
+
+int8_t pico_socket_add(struct pico_socket *s)
+{
+    struct pico_sockport *sp = pico_get_sockport(PROTO(s), s->local_port);
+    PICOTCP_MUTEX_LOCK(Mutex);
+    if (!sp) {
+        /* dbg("Creating sockport..%04x\n", s->local_port); / * In comment due to spam during test * / */
+        sp = PICO_ZALLOC(sizeof(struct pico_sockport));
+
+        if (!sp) {
+            pico_err = PICO_ERR_ENOMEM;
+            PICOTCP_MUTEX_UNLOCK(Mutex);
+            return -1;
+        }
+
+        sp->proto = PROTO(s);
+        sp->number = s->local_port;
+        sp->socks.root = &LEAF;
+        sp->socks.compare = socket_cmp;
+
+        if (PROTO(s) == PICO_PROTO_UDP)
+        {
+            pico_tree_insert(&UDPTable, sp);
+        }
+        else if (PROTO(s) == PICO_PROTO_TCP)
+        {
+            pico_tree_insert(&TCPTable, sp);
+        }
+    }
+
+    pico_tree_insert(&sp->socks, s);
+    s->state |= PICO_SOCKET_STATE_BOUND;
+    PICOTCP_MUTEX_UNLOCK(Mutex);
+#ifdef DEBUG_SOCKET_TREE
+    {
+        struct pico_tree_node *index;
+        /* RB_FOREACH(s, socket_tree, &sp->socks) { */
+        pico_tree_foreach(index, &sp->socks){
+            s = index->keyValue;
+            dbg(">>>> List Socket lc=%hu rm=%hu\n", short_be(s->local_port), short_be(s->remote_port));
+        }
+
+    }
+#endif
+    return 0;
+}
+
+
+static void socket_clean_queues(struct pico_socket *sock)
+{
+    struct pico_frame *f_in = pico_dequeue(&sock->q_in);
+    struct pico_frame *f_out = pico_dequeue(&sock->q_out);
+    while(f_in || f_out)
+    {
+        if(f_in)
+        {
+            pico_frame_discard(f_in);
+            f_in = pico_dequeue(&sock->q_in);
+        }
+
+        if(f_out)
+        {
+            pico_frame_discard(f_out);
+            f_out = pico_dequeue(&sock->q_out);
+        }
+    }
+    pico_queue_deinit(&sock->q_in);
+    pico_queue_deinit(&sock->q_out);
+    pico_socket_tcp_cleanup(sock);
+}
+
+static void socket_garbage_collect(pico_time now, void *arg)
+{
+    struct pico_socket *s = (struct pico_socket *) arg;
+    IGNORE_PARAMETER(now);
+
+    socket_clean_queues(s);
+    PICO_FREE(s);
+}
+
+
+static void pico_socket_check_empty_sockport(struct pico_socket *s, struct pico_sockport *sp)
+{
+    if(pico_tree_empty(&sp->socks)) {
+        if (PROTO(s) == PICO_PROTO_UDP)
+        {
+            pico_tree_delete(&UDPTable, sp);
+        }
+        else if (PROTO(s) == PICO_PROTO_TCP)
+        {
+            pico_tree_delete(&TCPTable, sp);
+        }
+
+        if(sp_tcp == sp)
+            sp_tcp = NULL;
+
+        if(sp_udp == sp)
+            sp_udp = NULL;
+
+        PICO_FREE(sp);
+    }
+}
+
+int8_t pico_socket_del(struct pico_socket *s)
+{
+    struct pico_sockport *sp = pico_get_sockport(PROTO(s), s->local_port);
+    if (!sp) {
+        pico_err = PICO_ERR_ENXIO;
+        return -1;
+    }
+
+    PICOTCP_MUTEX_LOCK(Mutex);
+    pico_tree_delete(&sp->socks, s);
+    pico_socket_check_empty_sockport(s, sp);
+    pico_multicast_delete(s);
+    pico_socket_tcp_delete(s);
+    s->state = PICO_SOCKET_STATE_CLOSED;
+    pico_timer_add(3000, socket_garbage_collect, s);
+    PICOTCP_MUTEX_UNLOCK(Mutex);
+    return 0;
+}
+
+static void pico_socket_update_tcp_state(struct pico_socket *s, uint16_t tcp_state)
+{
+    if (tcp_state) {
+        s->state &= 0x00FF;
+        s->state |= tcp_state;
+    }
+}
+
+static int8_t pico_socket_alter_state(struct pico_socket *s, uint16_t more_states, uint16_t less_states, uint16_t tcp_state)
+{
+    struct pico_sockport *sp;
+    if (more_states & PICO_SOCKET_STATE_BOUND)
+        return pico_socket_add(s);
+
+    if (less_states & PICO_SOCKET_STATE_BOUND)
+        return pico_socket_del(s);
+
+    sp = pico_get_sockport(PROTO(s), s->local_port);
+    if (!sp) {
+        pico_err = PICO_ERR_ENXIO;
+        return -1;
+    }
+
+    s->state |= more_states;
+    s->state = (uint16_t)(s->state & (~less_states));
+    pico_socket_update_tcp_state(s, tcp_state);
+    return 0;
+}
+
+
+static int pico_socket_transport_deliver(struct pico_protocol *p, struct pico_sockport *sp, struct pico_frame *f)
+{
+#ifdef PICO_SUPPORT_TCP
+    if (p->proto_number == PICO_PROTO_TCP)
+        return pico_socket_tcp_deliver(sp, f);
+
+#endif
+
+#ifdef PICO_SUPPORT_UDP
+    if (p->proto_number == PICO_PROTO_UDP)
+        return pico_socket_udp_deliver(sp, f);
+
+#endif
+
+    return -1;
+}
+
+
+static int pico_socket_deliver(struct pico_protocol *p, struct pico_frame *f, uint16_t localport)
+{
+    struct pico_sockport *sp = NULL;
+    struct pico_trans *tr = (struct pico_trans *) f->transport_hdr;
+
+    if (!tr)
+        return -1;
+
+    sp = pico_get_sockport(p->proto_number, localport);
+    if (!sp) {
+        dbg("No such port %d\n", short_be(localport));
+        return -1;
+    }
+
+    return pico_socket_transport_deliver(p, sp, f);
+}
+
+int pico_socket_set_family(struct pico_socket *s, uint16_t family)
+{
+    (void) family;
+
+  #ifdef PICO_SUPPORT_IPV4
+    if (family == PICO_PROTO_IPV4)
+        s->net = &pico_proto_ipv4;
+
+  #endif
+
+  #ifdef PICO_SUPPORT_IPV6
+    if (family == PICO_PROTO_IPV6)
+        s->net = &pico_proto_ipv6;
+
+  #endif
+
+    if (s->net == NULL)
+        return -1;
+
+    return 0;
+}
+
+static struct pico_socket *pico_socket_transport_open(uint16_t proto, uint16_t family)
+{
+    struct pico_socket *s = NULL;
+    (void)family;
+#ifdef PICO_SUPPORT_UDP
+    if (proto == PICO_PROTO_UDP)
+        s = pico_socket_udp_open();
+
+#endif
+
+#ifdef PICO_SUPPORT_TCP
+    if (proto == PICO_PROTO_TCP)
+        s = pico_socket_tcp_open(family);
+
+#endif
+
+    return s;
+
+}
+
+struct pico_socket *pico_socket_open(uint16_t net, uint16_t proto, void (*wakeup)(uint16_t ev, struct pico_socket *))
+{
+
+    struct pico_socket *s = NULL;
+
+    s = pico_socket_transport_open(proto, net);
+
+    if (!s) {
+        pico_err = PICO_ERR_EPROTONOSUPPORT;
+        return NULL;
+    }
+
+    if (pico_socket_set_family(s, net) != 0) {
+        PICO_FREE(s);
+        pico_err = PICO_ERR_ENETUNREACH;
+        return NULL;
+    }
+
+    s->q_in.max_size = PICO_DEFAULT_SOCKETQ;
+    s->q_out.max_size = PICO_DEFAULT_SOCKETQ;
+
+    s->wakeup = wakeup;
+    return s;
+}
+
+
+static void pico_socket_clone_assign_address(struct pico_socket *s, struct pico_socket *facsimile)
+{
+
+#ifdef PICO_SUPPORT_IPV4
+    if (facsimile->net == &pico_proto_ipv4) {
+        s->net = &pico_proto_ipv4;
+        memcpy(&s->local_addr, &facsimile->local_addr, sizeof(struct pico_ip4));
+        memcpy(&s->remote_addr, &facsimile->remote_addr, sizeof(struct pico_ip4));
+    }
+
+#endif
+
+#ifdef PICO_SUPPORT_IPV6
+    if (facsimile->net == &pico_proto_ipv6) {
+        s->net = &pico_proto_ipv6;
+        memcpy(&s->local_addr, &facsimile->local_addr, sizeof(struct pico_ip6));
+        memcpy(&s->remote_addr, &facsimile->remote_addr, sizeof(struct pico_ip6));
+    }
+
+#endif
+
+}
+
+struct pico_socket *pico_socket_clone(struct pico_socket *facsimile)
+{
+    struct pico_socket *s = NULL;
+
+    s = pico_socket_transport_open(facsimile->proto->proto_number, facsimile->net->proto_number);
+    if (!s) {
+        pico_err = PICO_ERR_EPROTONOSUPPORT;
+        return NULL;
+    }
+
+    s->local_port = facsimile->local_port;
+    s->remote_port = facsimile->remote_port;
+    s->state = facsimile->state;
+    pico_socket_clone_assign_address(s, facsimile);
+    if (!s->net) {
+        PICO_FREE(s);
+        pico_err = PICO_ERR_ENETUNREACH;
+        return NULL;
+    }
+
+    s->q_in.max_size = PICO_DEFAULT_SOCKETQ;
+    s->q_out.max_size = PICO_DEFAULT_SOCKETQ;
+    s->wakeup = NULL;
+    return s;
+}
+
+static int pico_socket_transport_read(struct pico_socket *s, void *buf, int len)
+{
+    if (PROTO(s) == PICO_PROTO_UDP)
+    {
+        /* make sure cast to uint16_t doesn't give unexpected results */
+        if(len > 0xFFFF) {
+            pico_err = PICO_ERR_EINVAL;
+            return -1;
+        }
+
+        return pico_socket_udp_recv(s, buf, (uint16_t)len, NULL, NULL);
+    }
+    else if (PROTO(s) == PICO_PROTO_TCP)
+        return pico_socket_tcp_read(s, buf, (uint32_t)len);
+    else return 0;
+}
+
+int pico_socket_read(struct pico_socket *s, void *buf, int len)
+{
+    if (!s || buf == NULL) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    } else {
+        /* check if exists in tree */
+        /* See task #178 */
+        if (pico_check_socket(s) != 0) {
+            pico_err = PICO_ERR_EINVAL;
+            return -1;
+        }
+    }
+
+    if ((s->state & PICO_SOCKET_STATE_BOUND) == 0) {
+        pico_err = PICO_ERR_EIO;
+        return -1;
+    }
+
+    return pico_socket_transport_read(s, buf, len);
+}
+
+static int pico_socket_write_check_state(struct pico_socket *s)
+{
+    if ((s->state & PICO_SOCKET_STATE_BOUND) == 0) {
+        pico_err = PICO_ERR_EIO;
+        return -1;
+    }
+
+    if ((s->state & PICO_SOCKET_STATE_CONNECTED) == 0) {
+        pico_err = PICO_ERR_ENOTCONN;
+        return -1;
+    }
+
+    if (s->state & PICO_SOCKET_STATE_SHUT_LOCAL) { /* check if in shutdown state */
+        pico_err = PICO_ERR_ESHUTDOWN;
+        return -1;
+    }
+
+    return 0;
+}
+
+static int pico_socket_write_attempt(struct pico_socket *s, const void *buf, int len)
+{
+    if (pico_socket_write_check_state(s) < 0) {
+        return -1;
+    } else {
+        return pico_socket_sendto(s, buf, len, &s->remote_addr, s->remote_port);
+    }
+}
+
+int pico_socket_write(struct pico_socket *s, const void *buf, int len)
+{
+    if (!s || buf == NULL) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    } else {
+        /* check if exists in tree */
+        /* See task #178 */
+        if (pico_check_socket(s) != 0) {
+            pico_err = PICO_ERR_EINVAL;
+            return -1;
+        }
+    }
+
+    return pico_socket_write_attempt(s, buf, len);
+}
+
+static uint16_t pico_socket_high_port(uint16_t proto)
+{
+    uint16_t port;
+    if (0 ||
+#ifdef PICO_SUPPORT_TCP
+        (proto == PICO_PROTO_TCP) ||
+#endif
+#ifdef PICO_SUPPORT_UDP
+        (proto == PICO_PROTO_UDP) ||
+#endif
+        0) {
+        do {
+            uint32_t rand = pico_rand();
+            port = (uint16_t) (rand & 0xFFFFU);
+            port = (uint16_t)((port % (65535 - 1024)) + 1024U);
+            if (pico_is_port_free(proto, port, NULL, NULL)) {
+                return short_be(port);
+            }
+        } while(1);
+    }
+    else return 0U;
+}
+
+static void *pico_socket_sendto_get_ip4_src(struct pico_socket *s, struct pico_ip4 *dst)
+{
+    struct pico_ip4 *src4 = NULL;
+
+#ifdef PICO_SUPPORT_IPV4
+    /* Check if socket is connected: destination address MUST match the
+     * current connected endpoint
+     */
+    if ((s->state & PICO_SOCKET_STATE_CONNECTED)) {
+        src4 = &s->local_addr.ip4;
+        if  (s->remote_addr.ip4.addr != ((struct pico_ip4 *)dst)->addr ) {
+            pico_err = PICO_ERR_EADDRNOTAVAIL;
+            return NULL;
+        }
+    } else {
+
+        src4 = pico_ipv4_source_find(dst);
+        if (!src4) {
+            pico_err = PICO_ERR_EHOSTUNREACH;
+            return NULL;
+        }
+
+    }
+
+    if (src4->addr != PICO_IPV4_INADDR_ANY)
+        s->local_addr.ip4.addr = src4->addr;
+
+#else
+    pico_err = PICO_ERR_EPROTONOSUPPORT;
+#endif
+    return src4;
+}
+
+static void *pico_socket_sendto_get_ip6_src(struct pico_socket *s, struct pico_ip6 *dst)
+{
+    struct pico_ip6 *src6 = NULL;
+    (void)s;
+    (void)dst;
+
+#ifdef PICO_SUPPORT_IPV6
+
+    /* Check if socket is connected: destination address MUST match the
+     * current connected endpoint
+     */
+    if ((s->state & PICO_SOCKET_STATE_CONNECTED)) {
+        src6 = &s->local_addr.ip6;
+        if (memcmp(&s->remote_addr, dst, PICO_SIZE_IP6)) {
+            pico_err = PICO_ERR_EADDRNOTAVAIL;
+            return NULL;
+        }
+    } else {
+        src6 = pico_ipv6_source_find(dst);
+        if (!src6) {
+            pico_err = PICO_ERR_EHOSTUNREACH;
+            return NULL;
+        }
+
+        if (!pico_ipv6_is_unspecified(src6->addr))
+            s->local_addr.ip6 = *src6;
+    }
+
+#else
+    pico_err = PICO_ERR_EPROTONOSUPPORT;
+#endif
+    return src6;
+}
+
+
+static int pico_socket_sendto_dest_check(struct pico_socket *s, void *dst, uint16_t port)
+{
+
+    /* For the sendto call to be valid,
+     * dst and remote_port should be always populated.
+     */
+    if (!dst || !port) {
+        pico_err = PICO_ERR_EADDRNOTAVAIL;
+        return -1;
+    }
+
+    /* When coming from pico_socket_send (or _write),
+     * the destination is automatically assigned to the currently connected endpoint.
+     * This check will ensure that there is no mismatch when sendto() is called directly
+     * on a connected socket
+     */
+    if ((s->state & PICO_SOCKET_STATE_CONNECTED) != 0) {
+        if (port != s->remote_port) {
+            pico_err = PICO_ERR_EINVAL;
+            return -1;
+        }
+    }
+
+    return 0;
+}
+
+static int pico_socket_sendto_initial_checks(struct pico_socket *s, const void *buf, const int len, void *dst, uint16_t remote_port)
+{
+    if (len < 0) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+    if (buf == NULL || s == NULL) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+    return pico_socket_sendto_dest_check(s, dst, remote_port);
+}
+
+static void *pico_socket_sendto_get_src(struct pico_socket *s, void *dst)
+{
+    void *src = NULL;
+    if (is_sock_ipv4(s))
+        src = pico_socket_sendto_get_ip4_src(s, (struct pico_ip4 *)dst);
+
+    if (is_sock_ipv6(s))
+        src = pico_socket_sendto_get_ip6_src(s, (struct pico_ip6 *)dst);
+
+    return src;
+}
+
+static struct pico_remote_endpoint *pico_socket_sendto_destination_ipv4(struct pico_socket *s, struct pico_ip4 *dst, uint16_t port)
+{
+    struct pico_remote_endpoint *ep = NULL;
+    (void)s;
+    ep = PICO_ZALLOC(sizeof(struct pico_remote_endpoint));
+    if (!ep) {
+        pico_err = PICO_ERR_ENOMEM;
+        return NULL;
+    }
+
+    ep->remote_addr.ip4.addr = ((struct pico_ip4 *)dst)->addr;
+    ep->remote_port = port;
+    return ep;
+}
+
+static void pico_endpoint_free(struct pico_remote_endpoint *ep)
+{
+    if (ep)
+        PICO_FREE(ep);
+}
+
+static struct pico_remote_endpoint *pico_socket_sendto_destination_ipv6(struct pico_socket *s, struct pico_ip6 *dst, uint16_t port)
+{
+    struct pico_remote_endpoint *ep = NULL;
+    (void)s;
+    (void)dst;
+    (void)port;
+#ifdef PICO_SUPPORT_IPV6
+    ep = PICO_ZALLOC(sizeof(struct pico_remote_endpoint));
+    if (!ep) {
+        pico_err = PICO_ERR_ENOMEM;
+        return NULL;
+    }
+
+    memcpy(&ep->remote_addr.ip6, dst, sizeof(struct pico_ip6));
+    ep->remote_port = port;
+#endif
+    return ep;
+}
+
+
+static struct pico_remote_endpoint *pico_socket_sendto_destination(struct pico_socket *s, void *dst, uint16_t port)
+{
+    struct pico_remote_endpoint *ep = NULL;
+    (void)pico_socket_sendto_destination_ipv6;
+    /* socket remote info could change in a consecutive call, make persistent */
+#   ifdef PICO_SUPPORT_UDP
+    if (PROTO(s) == PICO_PROTO_UDP) {
+#       ifdef PICO_SUPPORT_IPV6
+        if (is_sock_ipv6(s))
+            ep = pico_socket_sendto_destination_ipv6(s, (struct pico_ip6 *)dst, port);
+
+#       endif
+#       ifdef PICO_SUPPORT_IPV4
+        if (is_sock_ipv4(s))
+            ep = pico_socket_sendto_destination_ipv4(s, (struct pico_ip4 *)dst, port);
+
+#       endif
+    }
+
+#  endif
+    return ep;
+}
+
+static int32_t pico_socket_sendto_set_localport(struct pico_socket *s)
+{
+
+    if ((s->state & PICO_SOCKET_STATE_BOUND) == 0) {
+        s->local_port = pico_socket_high_port(s->proto->proto_number);
+        if (s->local_port == 0) {
+            pico_err = PICO_ERR_EINVAL;
+            return -1;
+        }
+
+        s->state |= PICO_SOCKET_STATE_BOUND;
+    }
+
+    return s->local_port;
+}
+
+static int pico_socket_sendto_transport_offset(struct pico_socket *s)
+{
+    int header_offset = -1;
+    #ifdef PICO_SUPPORT_TCP
+    if (PROTO(s) == PICO_PROTO_TCP)
+        header_offset = pico_tcp_overhead(s);
+
+    #endif
+
+    #ifdef PICO_SUPPORT_UDP
+    if (PROTO(s) == PICO_PROTO_UDP)
+        header_offset = sizeof(struct pico_udp_hdr);
+
+    #endif
+    return header_offset;
+}
+
+
+static struct pico_remote_endpoint *pico_socket_set_info(struct pico_remote_endpoint *ep)
+{
+    struct pico_remote_endpoint *info;
+    info = PICO_ZALLOC(sizeof(struct pico_remote_endpoint));
+    if (!info) {
+        pico_err = PICO_ERR_ENOMEM;
+        return NULL;
+    }
+
+    memcpy(info, ep, sizeof(struct pico_remote_endpoint));
+    return info;
+}
+
+static void pico_xmit_frame_set_nofrag(struct pico_frame *f)
+{
+#ifdef PICO_SUPPORT_IPFRAG
+    f->frag = PICO_IPV4_DONTFRAG;
+#else
+    (void)f;
+#endif
+}
+
+static int pico_socket_final_xmit(struct pico_socket *s, struct pico_frame *f)
+{
+    if (s->proto->push(s->proto, f) > 0) {
+        return f->payload_len;
+    } else {
+        pico_frame_discard(f);
+        return 0;
+    }
+}
+
+static int pico_socket_xmit_one(struct pico_socket *s, const void *buf, const int len, void *src,
+                                struct pico_remote_endpoint *ep, struct pico_msginfo *msginfo)
+{
+    struct pico_frame *f;
+    uint16_t hdr_offset = (uint16_t)pico_socket_sendto_transport_offset(s);
+    int ret = 0;
+    (void)src;
+
+    f = pico_socket_frame_alloc(s, (uint16_t)(len + hdr_offset));
+    if (!f) {
+        pico_err = PICO_ERR_ENOMEM;
+        return -1;
+    }
+
+    f->payload += hdr_offset;
+    f->payload_len = (uint16_t)(len);
+    f->sock = s;
+    transport_flags_update(f, s);
+    pico_xmit_frame_set_nofrag(f);
+    if (ep && !f->info) {
+        f->info = pico_socket_set_info(ep);
+        if (!f->info) {
+            pico_frame_discard(f);
+            return -1;
+        }
+    }
+
+    if (msginfo) {
+        f->send_ttl = (uint8_t)msginfo->ttl;
+        f->send_tos = (uint8_t)msginfo->tos;
+        f->dev = msginfo->dev;
+    }
+
+    memcpy(f->payload, (const uint8_t *)buf, f->payload_len);
+    /* dbg("Pushing segment, hdr len: %d, payload_len: %d\n", header_offset, f->payload_len); */
+    ret = pico_socket_final_xmit(s, f);
+    return ret;
+}
+
+static int pico_socket_xmit_avail_space(struct pico_socket *s);
+
+#ifdef PICO_SUPPORT_IPFRAG
+static void pico_socket_xmit_first_fragment_setup(struct pico_frame *f, int space, int hdr_offset)
+{
+    frag_dbg("FRAG: first fragmented frame %p | len = %u offset = 0\n", f, f->payload_len);
+    /* transport header length field contains total length + header length */
+    f->transport_len = (uint16_t)(space);
+    f->frag = PICO_IPV4_MOREFRAG;
+    f->payload += hdr_offset;
+    f->payload_len = (uint16_t) space;
+}
+
+static void pico_socket_xmit_next_fragment_setup(struct pico_frame *f, int hdr_offset, int total_payload_written, int len)
+{
+    /* no transport header in fragmented IP */
+    f->payload = f->transport_hdr;
+    f->payload_len = (uint16_t)(f->payload_len - hdr_offset);
+    /* set offset in octets */
+    f->frag = (uint16_t)((total_payload_written + (uint16_t)hdr_offset) >> 3u);
+    if (total_payload_written + f->payload_len < len) {
+        frag_dbg("FRAG: intermediate fragmented frame %p | len = %u offset = %u\n", f, f->payload_len, short_be(f->frag));
+        f->frag |= PICO_IPV4_MOREFRAG;
+    } else {
+        frag_dbg("FRAG: last fragmented frame %p | len = %u offset = %u\n", f, f->payload_len, short_be(f->frag));
+        f->frag &= PICO_IPV4_FRAG_MASK;
+    }
+}
+#endif
+
+static int pico_socket_xmit_fragments(struct pico_socket *s, const void *buf, const int len,
+                                      void *src, struct pico_remote_endpoint *ep, struct pico_msginfo *msginfo)
+{
+    int space = pico_socket_xmit_avail_space(s);
+    int hdr_offset = pico_socket_sendto_transport_offset(s);
+    int total_payload_written = 0;
+    struct pico_frame *f = NULL;
+
+    if (space > len) {
+        return pico_socket_xmit_one(s, buf, len, src, ep, msginfo);
+    }
+
+#ifdef PICO_SUPPORT_IPV6
+    /* Can't fragment IPv6 */
+    if (is_sock_ipv6(s)) {
+        return pico_socket_xmit_one(s, buf, space, src, ep, msginfo);
+    }
+
+#endif
+
+#ifdef PICO_SUPPORT_IPFRAG
+    while(total_payload_written < len) {
+        /* Always allocate the max space available: space + offset */
+        if (len < space)
+            space = len;
+
+        if (space > len - total_payload_written)
+            space = len - total_payload_written;
+
+        f = pico_socket_frame_alloc(s, (uint16_t)(space + hdr_offset));
+        if (!f) {
+            pico_err = PICO_ERR_ENOMEM;
+            pico_endpoint_free(ep);
+            return -1;
+        }
+
+        f->sock = s;
+        if (ep) {
+            f->info = pico_socket_set_info(ep);
+            if (!f->info) {
+                pico_frame_discard(f);
+                pico_endpoint_free(ep);
+                return -1;
+            }
+        }
+
+        if (total_payload_written == 0) {
+            /* First fragment: no payload written yet! */
+            pico_socket_xmit_first_fragment_setup(f, space, hdr_offset);
+        } else {
+            /* Next fragment */
+            pico_socket_xmit_next_fragment_setup(f, hdr_offset, total_payload_written, len);
+        }
+
+        memcpy(f->payload, (const uint8_t *)buf + total_payload_written, f->payload_len);
+        transport_flags_update(f, s);
+        if (s->proto->push(s->proto, f) > 0) {
+            total_payload_written += f->payload_len;
+        } else {
+            pico_frame_discard(f);
+            break;
+        }
+    } /* while() */
+    pico_endpoint_free(ep);
+    return total_payload_written;
+
+#else
+    /* Careful with that axe, Eugene!
+     *
+     * cropping down datagrams to the MTU value.
+     */
+    (void) f;
+    (void) hdr_offset;
+    (void) total_payload_written;
+    return pico_socket_xmit_one(s, buf, space, src, ep, msginfo);
+
+#endif
+}
+
+static void get_sock_dev(struct pico_socket *s)
+{
+    if (0) {}
+
+#ifdef PICO_SUPPORT_IPV6
+    else if (is_sock_ipv6(s))
+        s->dev = pico_ipv6_source_dev_find(&s->remote_addr.ip6);
+#endif
+#ifdef PICO_SUPPORT_IPV4
+    else if (is_sock_ipv4(s))
+        s->dev = pico_ipv4_source_dev_find(&s->remote_addr.ip4);
+#endif
+
+}
+
+
+static uint32_t pico_socket_adapt_mss_to_proto(struct pico_socket *s, uint32_t mss)
+{
+#ifdef PICO_SUPPORT_IPV6
+    if (is_sock_ipv6(s))
+        mss -= PICO_SIZE_IP6HDR;
+    else
+#endif
+    mss -= PICO_SIZE_IP4HDR;
+    return mss;
+}
+
+uint32_t pico_socket_get_mss(struct pico_socket *s)
+{
+    uint32_t mss = PICO_MIN_MSS;
+    if (!s)
+        return mss;
+
+    if (!s->dev)
+        get_sock_dev(s);
+
+    if (!s->dev) {
+        mss = PICO_MIN_MSS;
+    } else {
+        mss = s->dev->mtu;
+    }
+
+    return pico_socket_adapt_mss_to_proto(s, mss);
+}
+
+
+static int pico_socket_xmit_avail_space(struct pico_socket *s)
+{
+    int transport_len;
+    int header_offset;
+
+#ifdef PICO_SUPPORT_TCP
+    if (PROTO(s) == PICO_PROTO_TCP) {
+        transport_len = (uint16_t)pico_tcp_get_socket_mss(s);
+    } else
+#endif
+    transport_len = (uint16_t)pico_socket_get_mss(s);
+    header_offset = pico_socket_sendto_transport_offset(s);
+    if (header_offset < 0) {
+        pico_err = PICO_ERR_EPROTONOSUPPORT;
+        return -1;
+    }
+
+    transport_len -= pico_socket_sendto_transport_offset(s);
+    return transport_len;
+}
+
+
+static int pico_socket_xmit(struct pico_socket *s, const void *buf, const int len, void *src,
+                            struct pico_remote_endpoint *ep, struct pico_msginfo *msginfo)
+{
+    int space = pico_socket_xmit_avail_space(s);
+    int total_payload_written = 0;
+
+    if (space < 0) {
+        pico_err = PICO_ERR_EPROTONOSUPPORT;
+        pico_endpoint_free(ep);
+        return -1;
+    }
+
+    if ((PROTO(s) == PICO_PROTO_UDP) && (len > space)) {
+        total_payload_written = pico_socket_xmit_fragments(s, buf, len, src, ep, msginfo);
+        /* Implies ep discarding */
+        return total_payload_written;
+    }
+
+    while (total_payload_written < len) {
+        int w, chunk_len = len - total_payload_written;
+        if (chunk_len > space)
+            chunk_len = space;
+
+        w = pico_socket_xmit_one(s, (const void *)((const uint8_t *)buf + total_payload_written), chunk_len, src, ep, msginfo);
+        if (w <= 0) {
+            break;
+        }
+
+        total_payload_written += w;
+        if (PROTO(s) == PICO_PROTO_UDP) {
+            /* Break after the first datagram sent with at most MTU bytes. */
+            break;
+        }
+    }
+    pico_endpoint_free(ep);
+    return total_payload_written;
+}
+
+static void pico_socket_sendto_set_dport(struct pico_socket *s, uint16_t port)
+{
+    if ((s->state & PICO_SOCKET_STATE_CONNECTED) == 0) {
+        s->remote_port = port;
+    }
+}
+
+
+int MOCKABLE pico_socket_sendto_extended(struct pico_socket *s, const void *buf, const int len,
+                                         void *dst, uint16_t remote_port, struct pico_msginfo *msginfo)
+{
+    struct pico_remote_endpoint *remote_endpoint = NULL;
+    void *src = NULL;
+
+    if(len == 0)
+        return 0;
+
+    if (pico_socket_sendto_initial_checks(s, buf, len, dst, remote_port) < 0)
+        return -1;
+
+
+    src = pico_socket_sendto_get_src(s, dst);
+    if (!src) {
+#ifdef PICO_SUPPORT_IPV6
+        if((s->net->proto_number == PICO_PROTO_IPV6)
+           && msginfo && msginfo->dev
+           && pico_ipv6_is_linklocal(((struct pico_ip6 *)dst)->addr))
+        {
+            src = &(pico_ipv6_linklocal_get(msginfo->dev)->address);
+            if(!src)
+                return -1;
+        }
+        else
+#endif
+        return -1;
+    }
+
+    remote_endpoint = pico_socket_sendto_destination(s, dst, remote_port);
+    if (pico_socket_sendto_set_localport(s) < 0) {
+        pico_endpoint_free(remote_endpoint);
+        return -1;
+    }
+
+    pico_socket_sendto_set_dport(s, remote_port);
+    return pico_socket_xmit(s, buf, len, src, remote_endpoint, msginfo); /* Implies discarding the endpoint */
+}
+
+int MOCKABLE pico_socket_sendto(struct pico_socket *s, const void *buf, const int len, void *dst, uint16_t remote_port)
+{
+    return pico_socket_sendto_extended(s, buf, len, dst, remote_port, NULL);
+}
+
+int pico_socket_send(struct pico_socket *s, const void *buf, int len)
+{
+    if (!s || buf == NULL) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    } else {
+        /* check if exists in tree */
+        /* See task #178 */
+        if (pico_check_socket(s) != 0) {
+            pico_err = PICO_ERR_EINVAL;
+            return -1;
+        }
+    }
+
+    if ((s->state & PICO_SOCKET_STATE_CONNECTED) == 0) {
+        pico_err = PICO_ERR_ENOTCONN;
+        return -1;
+    }
+
+    return pico_socket_sendto(s, buf, len, &s->remote_addr, s->remote_port);
+}
+
+int pico_socket_recvfrom_extended(struct pico_socket *s, void *buf, int len, void *orig,
+                                  uint16_t *remote_port, struct pico_msginfo *msginfo)
+{
+    if (!s || buf == NULL) { /* / || orig == NULL || remote_port == NULL) { */
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    } else {
+        /* check if exists in tree */
+        if (pico_check_socket(s) != 0) {
+            pico_err = PICO_ERR_EINVAL;
+            /* See task #178 */
+            return -1;
+        }
+    }
+
+    if ((s->state & PICO_SOCKET_STATE_BOUND) == 0) {
+        pico_err = PICO_ERR_EADDRNOTAVAIL;
+        return -1;
+    }
+
+#ifdef PICO_SUPPORT_UDP
+    if (PROTO(s) == PICO_PROTO_UDP) {
+        /* make sure cast to uint16_t doesn't give unexpected results */
+        if(len > 0xFFFF) {
+            pico_err = PICO_ERR_EINVAL;
+            return -1;
+        }
+
+        return pico_udp_recv(s, buf, (uint16_t)len, orig, remote_port, msginfo);
+    }
+
+#endif
+#ifdef PICO_SUPPORT_TCP
+    if (PROTO(s) == PICO_PROTO_TCP) {
+        /* check if in shutdown state and if tcpq_in empty */
+        if ((s->state & PICO_SOCKET_STATE_SHUT_REMOTE) && pico_tcp_queue_in_is_empty(s)) {
+            pico_err = PICO_ERR_ESHUTDOWN;
+            return -1;
+        } else {
+            /* dbg("socket tcp recv\n"); */
+            return (int)pico_tcp_read(s, buf, (uint32_t)len);
+        }
+    }
+
+#endif
+    /* dbg("socket return 0\n"); */
+    return 0;
+}
+
+int pico_socket_recvfrom(struct pico_socket *s, void *buf, int len, void *orig,
+                         uint16_t *remote_port)
+{
+    return pico_socket_recvfrom_extended(s, buf, len, orig, remote_port, NULL);
+
+}
+
+int pico_socket_recv(struct pico_socket *s, void *buf, int len)
+{
+    return pico_socket_recvfrom(s, buf, len, NULL, NULL);
+}
+
+
+int pico_socket_getname(struct pico_socket *s, void *local_addr, uint16_t *port, uint16_t *proto)
+{
+
+    if (!s || !local_addr || !port || !proto) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+    if (is_sock_ipv4(s)) {
+    #ifdef PICO_SUPPORT_IPV4
+        struct pico_ip4 *ip = (struct pico_ip4 *)local_addr;
+        ip->addr = s->local_addr.ip4.addr;
+        *proto = PICO_PROTO_IPV4;
+    #endif
+    } else if (is_sock_ipv6(s)) {
+    #ifdef PICO_SUPPORT_IPV6
+        struct pico_ip6 *ip = (struct pico_ip6 *)local_addr;
+        memcpy(ip->addr, s->local_addr.ip6.addr, PICO_SIZE_IP6);
+        *proto = PICO_PROTO_IPV6;
+    #endif
+    } else {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+    *port = s->local_port;
+    return 0;
+}
+
+int pico_socket_getpeername(struct pico_socket *s, void *remote_addr, uint16_t *port, uint16_t *proto)
+{
+    if (!s || !remote_addr || !port || !proto) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+    if ((s->state & PICO_SOCKET_STATE_CONNECTED) == 0) {
+        pico_err = PICO_ERR_ENOTCONN;
+        return -1;
+    }
+
+    if (is_sock_ipv4(s)) {
+    #ifdef PICO_SUPPORT_IPV4
+        struct pico_ip4 *ip = (struct pico_ip4 *)remote_addr;
+        ip->addr = s->remote_addr.ip4.addr;
+        *proto = PICO_PROTO_IPV4;
+    #endif
+    } else if (is_sock_ipv6(s)) {
+    #ifdef PICO_SUPPORT_IPV6
+        struct pico_ip6 *ip = (struct pico_ip6 *)remote_addr;
+        memcpy(ip->addr, s->remote_addr.ip6.addr, PICO_SIZE_IP6);
+        *proto = PICO_PROTO_IPV6;
+    #endif
+    } else {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+    *port = s->remote_port;
+    return 0;
+
+}
+
+int pico_socket_bind(struct pico_socket *s, void *local_addr, uint16_t *port)
+{
+    if (!s || !local_addr || !port) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+    if (is_sock_ipv4(s)) {
+    #ifdef PICO_SUPPORT_IPV4
+        struct pico_ip4 *ip = (struct pico_ip4 *)local_addr;
+        if (ip->addr != PICO_IPV4_INADDR_ANY) {
+            if (!pico_ipv4_link_find(local_addr)) {
+                pico_err = PICO_ERR_EINVAL;
+                return -1;
+            }
+        }
+
+    #endif
+    } else if (is_sock_ipv6(s)) {
+    #ifdef PICO_SUPPORT_IPV6
+        struct pico_ip6 *ip = (struct pico_ip6 *)local_addr;
+        if (!pico_ipv6_is_unspecified(ip->addr)) {
+            if (!pico_ipv6_link_find(local_addr)) {
+                pico_err = PICO_ERR_EINVAL;
+                return -1;
+            }
+        }
+
+    #endif
+    } else {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+
+    /* When given port = 0, get a random high port to bind to. */
+    if (*port == 0) {
+        *port = pico_socket_high_port(PROTO(s));
+        if (*port == 0) {
+            pico_err = PICO_ERR_EINVAL;
+            return -1;
+        }
+    }
+
+    if (pico_is_port_free(PROTO(s), *port, local_addr, s->net) == 0) {
+        pico_err = PICO_ERR_EADDRINUSE;
+        return -1;
+    }
+
+    s->local_port = *port;
+
+    if (is_sock_ipv4(s)) {
+    #ifdef PICO_SUPPORT_IPV4
+        struct pico_ip4 *ip = (struct pico_ip4 *)local_addr;
+        s->local_addr.ip4 = *ip;
+    #endif
+    } else if (is_sock_ipv6(s)) {
+    #ifdef PICO_SUPPORT_IPV6
+        struct pico_ip6 *ip = (struct pico_ip6 *)local_addr;
+        s->local_addr.ip6 = *ip;
+    #endif
+    } else {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+    return pico_socket_alter_state(s, PICO_SOCKET_STATE_BOUND, 0, 0);
+}
+
+
+int pico_socket_connect(struct pico_socket *s, const void *remote_addr, uint16_t remote_port)
+{
+    int ret = -1;
+    pico_err = PICO_ERR_EPROTONOSUPPORT;
+    if (!s || remote_addr == NULL || remote_port == 0) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+    s->remote_port = remote_port;
+
+    if (s->local_port == 0) {
+        s->local_port = pico_socket_high_port(PROTO(s));
+        if (!s->local_port) {
+            pico_err = PICO_ERR_EINVAL;
+            return -1;
+        }
+    }
+
+    if (is_sock_ipv4(s)) {
+    #ifdef PICO_SUPPORT_IPV4
+        struct pico_ip4 *local = NULL;
+        const struct pico_ip4 *ip = (const struct pico_ip4 *)remote_addr;
+        s->remote_addr.ip4 = *ip;
+        local = pico_ipv4_source_find(ip);
+        if (local) {
+            get_sock_dev(s);
+            s->local_addr.ip4 = *local;
+        } else {
+            pico_err = PICO_ERR_EHOSTUNREACH;
+            return -1;
+        }
+
+    #endif
+    } else if (is_sock_ipv6(s)) {
+    #ifdef PICO_SUPPORT_IPV6
+        struct pico_ip6 *local = NULL;
+        const struct pico_ip6 *ip = (const struct pico_ip6 *)remote_addr;
+        s->remote_addr.ip6 = *ip;
+        local = pico_ipv6_source_find(ip);
+        if (local) {
+            get_sock_dev(s);
+            s->local_addr.ip6 = *local;
+        } else {
+            pico_err = PICO_ERR_EHOSTUNREACH;
+            return -1;
+        }
+
+    #endif
+    } else {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+    pico_socket_alter_state(s, PICO_SOCKET_STATE_BOUND, 0, 0);
+
+#ifdef PICO_SUPPORT_UDP
+    if (PROTO(s) == PICO_PROTO_UDP) {
+        pico_socket_alter_state(s, PICO_SOCKET_STATE_CONNECTED, 0, 0);
+        pico_err = PICO_ERR_NOERR;
+        ret = 0;
+    }
+
+#endif
+
+#ifdef PICO_SUPPORT_TCP
+    if (PROTO(s) == PICO_PROTO_TCP) {
+        if (pico_tcp_initconn(s) == 0) {
+            pico_socket_alter_state(s, PICO_SOCKET_STATE_CONNECTED | PICO_SOCKET_STATE_TCP_SYN_SENT, PICO_SOCKET_STATE_CLOSED, 0);
+            pico_err = PICO_ERR_NOERR;
+            ret = 0;
+        } else {
+            pico_err = PICO_ERR_EHOSTUNREACH;
+        }
+    }
+
+#endif
+
+    return ret;
+}
+
+
+#ifdef PICO_SUPPORT_TCP
+
+int pico_socket_listen(struct pico_socket *s, int backlog)
+{
+    if (!s || backlog < 1) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    } else {
+        /* check if exists in tree */
+        /* See task #178 */
+        if (pico_check_socket(s) != 0) {
+            pico_err = PICO_ERR_EINVAL;
+            return -1;
+        }
+    }
+
+    if (PROTO(s) == PICO_PROTO_UDP) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+    if ((s->state & PICO_SOCKET_STATE_BOUND) == 0) {
+        pico_err = PICO_ERR_EISCONN;
+        return -1;
+    }
+
+    if (PROTO(s) == PICO_PROTO_TCP)
+        pico_socket_alter_state(s, PICO_SOCKET_STATE_TCP_SYN_SENT, 0, PICO_SOCKET_STATE_TCP_LISTEN);
+
+    s->max_backlog = (uint16_t)backlog;
+
+    return 0;
+}
+
+struct pico_socket *pico_socket_accept(struct pico_socket *s, void *orig, uint16_t *port)
+{
+    if (!s || !orig || !port) {
+        pico_err = PICO_ERR_EINVAL;
+        return NULL;
+    }
+
+    pico_err = PICO_ERR_EINVAL;
+
+    if ((s->state & PICO_SOCKET_STATE_BOUND) == 0) {
+        return NULL;
+    }
+
+    if (PROTO(s) == PICO_PROTO_UDP) {
+        return NULL;
+    }
+
+    if (TCPSTATE(s) == PICO_SOCKET_STATE_TCP_LISTEN) {
+        struct pico_sockport *sp = pico_get_sockport(PICO_PROTO_TCP, s->local_port);
+        struct pico_socket *found;
+        uint32_t socklen = sizeof(struct pico_ip4);
+        /* If at this point no incoming connection socket is found,
+         * the accept call is valid, but no connection is established yet.
+         */
+        pico_err = PICO_ERR_EAGAIN;
+        if (sp) {
+            struct pico_tree_node *index;
+            /* RB_FOREACH(found, socket_tree, &sp->socks) { */
+            pico_tree_foreach(index, &sp->socks){
+                found = index->keyValue;
+                if ((s == found->parent) && ((found->state & PICO_SOCKET_STATE_TCP) == PICO_SOCKET_STATE_TCP_ESTABLISHED)) {
+                    found->parent = NULL;
+                    pico_err = PICO_ERR_NOERR;
+                    #ifdef PICO_SUPPORT_IPV6
+                    if (is_sock_ipv6(s))
+                        socklen = sizeof(struct pico_ip6);
+
+                    #endif
+                    memcpy(orig, &found->remote_addr, socklen);
+                    *port = found->remote_port;
+                    s->number_of_pending_conn--;
+                    return found;
+                }
+            }
+        }
+    }
+
+    return NULL;
+}
+
+#else
+
+int pico_socket_listen(struct pico_socket *s, int backlog)
+{
+    IGNORE_PARAMETER(s);
+    IGNORE_PARAMETER(backlog);
+    pico_err = PICO_ERR_EINVAL;
+    return -1;
+}
+
+struct pico_socket *pico_socket_accept(struct pico_socket *s, void *orig, uint16_t *local_port)
+{
+    IGNORE_PARAMETER(s);
+    IGNORE_PARAMETER(orig);
+    IGNORE_PARAMETER(local_port);
+    pico_err = PICO_ERR_EINVAL;
+    return NULL;
+}
+
+#endif
+
+
+int pico_socket_setoption(struct pico_socket *s, int option, void *value)
+{
+
+    if (s == NULL) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+
+    if (PROTO(s) == PICO_PROTO_TCP)
+        return pico_setsockopt_tcp(s, option, value);
+
+    if (PROTO(s) == PICO_PROTO_UDP)
+        return pico_setsockopt_udp(s, option, value);
+
+    pico_err = PICO_ERR_EPROTONOSUPPORT;
+    return -1;
+}
+
+
+int pico_socket_getoption(struct pico_socket *s, int option, void *value)
+{
+    if (s == NULL) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+
+    if (PROTO(s) == PICO_PROTO_TCP)
+        return pico_getsockopt_tcp(s, option, value);
+
+    if (PROTO(s) == PICO_PROTO_UDP)
+        return pico_getsockopt_udp(s, option, value);
+
+    pico_err = PICO_ERR_EPROTONOSUPPORT;
+    return -1;
+}
+
+
+int pico_socket_shutdown(struct pico_socket *s, int mode)
+{
+    if (!s) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+    /* Check if the socket has already been closed */
+    if (s->state & PICO_SOCKET_STATE_CLOSED) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+#ifdef PICO_SUPPORT_UDP
+    if (PROTO(s) == PICO_PROTO_UDP) {
+        if ((mode & PICO_SHUT_RDWR) == PICO_SHUT_RDWR)
+            pico_socket_alter_state(s, PICO_SOCKET_STATE_CLOSED, PICO_SOCKET_STATE_CLOSING | PICO_SOCKET_STATE_BOUND | PICO_SOCKET_STATE_CONNECTED, 0);
+        else if (mode & PICO_SHUT_RD)
+            pico_socket_alter_state(s, 0, PICO_SOCKET_STATE_BOUND, 0);
+    }
+
+#endif
+#ifdef PICO_SUPPORT_TCP
+    if (PROTO(s) == PICO_PROTO_TCP) {
+        if ((mode & PICO_SHUT_RDWR) == PICO_SHUT_RDWR)
+        {
+            pico_socket_alter_state(s, PICO_SOCKET_STATE_SHUT_LOCAL | PICO_SOCKET_STATE_SHUT_REMOTE, 0, 0);
+            pico_tcp_notify_closing(s);
+        }
+        else if (mode & PICO_SHUT_WR)
+            pico_socket_alter_state(s, PICO_SOCKET_STATE_SHUT_LOCAL, 0, 0);
+        else if (mode & PICO_SHUT_RD)
+            pico_socket_alter_state(s, PICO_SOCKET_STATE_SHUT_REMOTE, 0, 0);
+
+    }
+
+#endif
+    return 0;
+}
+
+int MOCKABLE pico_socket_close(struct pico_socket *s)
+{
+    if (!s)
+        return -1;
+
+#ifdef PICO_SUPPORT_TCP
+    if (PROTO(s) == PICO_PROTO_TCP) {
+        if (pico_tcp_check_listen_close(s) == 0)
+            return 0;
+    }
+
+#endif
+    return pico_socket_shutdown(s, PICO_SHUT_RDWR);
+}
+
+#ifdef PICO_SUPPORT_CRC
+static inline int pico_transport_crc_check(struct pico_frame *f)
+{
+    struct pico_ipv4_hdr *net_hdr = (struct pico_ipv4_hdr *) f->net_hdr;
+    struct pico_udp_hdr *udp_hdr = NULL;
+    uint16_t checksum_invalid = 1;
+
+    switch (net_hdr->proto)
+    {
+#ifdef PICO_SUPPORT_TCP
+    case PICO_PROTO_TCP:
+        checksum_invalid = short_be(pico_tcp_checksum(f));
+        /* dbg("TCP CRC validation == %u\n", checksum_invalid); */
+        if (checksum_invalid) {
+            dbg("TCP CRC: validation failed!\n");
+            pico_frame_discard(f);
+            return 0;
+        }
+
+        break;
+#endif /* PICO_SUPPORT_TCP */
+
+#ifdef PICO_SUPPORT_UDP
+    case PICO_PROTO_UDP:
+        udp_hdr = (struct pico_udp_hdr *) f->transport_hdr;
+        if (short_be(udp_hdr->crc)) {
+#ifdef PICO_SUPPORT_IPV4
+            if (IS_IPV4(f))
+                checksum_invalid = short_be(pico_udp_checksum_ipv4(f));
+
+#endif
+#ifdef PICO_SUPPORT_IPV6
+            if (IS_IPV6(f))
+                checksum_invalid = short_be(pico_udp_checksum_ipv6(f));
+
+#endif
+            /* dbg("UDP CRC validation == %u\n", checksum_invalid); */
+            if (checksum_invalid) {
+                /* dbg("UDP CRC: validation failed!\n"); */
+                pico_frame_discard(f);
+                return 0;
+            }
+        }
+
+        break;
+#endif /* PICO_SUPPORT_UDP */
+
+    default:
+        /* Do nothing */
+        break;
+    }
+    return 1;
+}
+#else
+static inline int pico_transport_crc_check(struct pico_frame *f)
+{
+    IGNORE_PARAMETER(f);
+    return 1;
+}
+#endif /* PICO_SUPPORT_CRC */
+
+int pico_transport_process_in(struct pico_protocol *self, struct pico_frame *f)
+{
+    struct pico_trans *hdr = (struct pico_trans *) f->transport_hdr;
+    int ret = 0;
+
+    if (!hdr) {
+        pico_err = PICO_ERR_EFAULT;
+        return -1;
+    }
+
+    ret = pico_transport_crc_check(f);
+    if (ret < 1)
+        return ret;
+    else
+        ret = 0;
+
+    if ((hdr) && (pico_socket_deliver(self, f, hdr->dport) == 0))
+        return ret;
+
+    if (!IS_BCAST(f)) {
+        dbg("Socket not found... \n");
+        pico_notify_socket_unreachable(f);
+        ret = -1;
+        pico_err = PICO_ERR_ENOENT;
+    }
+
+    pico_frame_discard(f);
+    return ret;
+}
+
+#define SL_LOOP_MIN 1
+
+#ifdef PICO_SUPPORT_TCP
+static int checkSocketSanity(struct pico_socket *s)
+{
+
+    /* checking for pending connections */
+    if(TCP_STATE(s) == PICO_SOCKET_STATE_TCP_SYN_RECV) {
+        if((PICO_TIME_MS() - s->timestamp) >= PICO_SOCKET_BOUND_TIMEOUT)
+            return -1;
+    }
+
+    if((PICO_TIME_MS() - s->timestamp) >= PICO_SOCKET_TIMEOUT) {
+        /* checking for hanging sockets */
+        if((TCP_STATE(s) != PICO_SOCKET_STATE_TCP_LISTEN) && (TCP_STATE(s) != PICO_SOCKET_STATE_TCP_ESTABLISHED))
+            return -1;
+    }
+
+    return 0;
+}
+#endif
+
+
+static int pico_sockets_loop_udp(int loop_score)
+{
+
+#ifdef PICO_SUPPORT_UDP
+    static struct pico_tree_node *index_udp;
+    struct pico_sockport *start;
+    struct pico_socket *s;
+    struct pico_frame *f;
+
+    if (sp_udp == NULL)
+    {
+        index_udp = pico_tree_firstNode(UDPTable.root);
+        sp_udp = index_udp->keyValue;
+    }
+
+    /* init start node */
+    start = sp_udp;
+
+    /* round-robin all transport protocols, break if traversed all protocols */
+    while (loop_score > SL_LOOP_MIN && sp_udp != NULL) {
+        struct pico_tree_node *index;
+
+        pico_tree_foreach(index, &sp_udp->socks){
+            s = index->keyValue;
+            f = pico_dequeue(&s->q_out);
+            while (f && (loop_score > 0)) {
+                pico_proto_udp.push(&pico_proto_udp, f);
+                loop_score -= 1;
+                f = pico_dequeue(&s->q_out);
+            }
+        }
+
+        index_udp = pico_tree_next(index_udp);
+        sp_udp = index_udp->keyValue;
+
+        if (sp_udp == NULL)
+        {
+            index_udp = pico_tree_firstNode(UDPTable.root);
+            sp_udp = index_udp->keyValue;
+        }
+
+        if (sp_udp == start)
+            break;
+    }
+#endif
+    return loop_score;
+}
+
+static int pico_sockets_loop_tcp(int loop_score)
+{
+#ifdef PICO_SUPPORT_TCP
+    struct pico_sockport *start;
+    struct pico_socket *s;
+    static struct pico_tree_node *index_tcp;
+    if (sp_tcp == NULL)
+    {
+        index_tcp = pico_tree_firstNode(TCPTable.root);
+        sp_tcp = index_tcp->keyValue;
+    }
+
+    /* init start node */
+    start = sp_tcp;
+
+    while (loop_score > SL_LOOP_MIN && sp_tcp != NULL) {
+        struct pico_tree_node *index = NULL, *safe_index = NULL;
+        pico_tree_foreach_safe(index, &sp_tcp->socks, safe_index){
+            s = index->keyValue;
+            loop_score = pico_tcp_output(s, loop_score);
+            if ((s->ev_pending) && s->wakeup) {
+                s->wakeup(s->ev_pending, s);
+                if(!s->parent)
+                    s->ev_pending = 0;
+            }
+
+            if (loop_score <= 0) {
+                loop_score = 0;
+                break;
+            }
+
+            if(checkSocketSanity(s) < 0)
+            {
+                pico_socket_del(s);
+                index_tcp = NULL; /* forcing the restart of loop */
+                sp_tcp = NULL;
+                break;
+            }
+        }
+
+        /* check if RB_FOREACH ended, if not, break to keep the cur sp_tcp */
+        if (!index_tcp || (index && index->keyValue))
+            break;
+
+        index_tcp = pico_tree_next(index_tcp);
+        sp_tcp = index_tcp->keyValue;
+
+        if (sp_tcp == NULL)
+        {
+            index_tcp = pico_tree_firstNode(TCPTable.root);
+            sp_tcp = index_tcp->keyValue;
+        }
+
+        if (sp_tcp == start)
+            break;
+    }
+#endif
+    return loop_score;
+
+
+}
+
+int pico_sockets_loop(int loop_score)
+{
+    loop_score = pico_sockets_loop_udp(loop_score);
+    loop_score = pico_sockets_loop_tcp(loop_score);
+    return loop_score;
+}
+
+int pico_count_sockets(uint8_t proto)
+{
+    struct pico_sockport *sp;
+    struct pico_tree_node *idx_sp, *idx_s;
+    int count = 0;
+
+    if ((proto == 0) || (proto == PICO_PROTO_TCP)) {
+        pico_tree_foreach(idx_sp, &TCPTable) {
+            sp = idx_sp->keyValue;
+            if (sp) {
+                pico_tree_foreach(idx_s, &sp->socks)
+                count++;
+            }
+        }
+    }
+
+    if ((proto == 0) || (proto == PICO_PROTO_UDP)) {
+        pico_tree_foreach(idx_sp, &UDPTable) {
+            sp = idx_sp->keyValue;
+            if (sp) {
+                pico_tree_foreach(idx_s, &sp->socks)
+                count++;
+            }
+        }
+    }
+
+    return count;
+}
+
+
+struct pico_frame *pico_socket_frame_alloc(struct pico_socket *s, uint16_t len)
+{
+    struct pico_frame *f = NULL;
+
+#ifdef PICO_SUPPORT_IPV6
+    if (is_sock_ipv6(s))
+        f = pico_proto_ipv6.alloc(&pico_proto_ipv6, len);
+
+#endif
+
+#ifdef PICO_SUPPORT_IPV4
+    if (is_sock_ipv4(s))
+        f = pico_proto_ipv4.alloc(&pico_proto_ipv4, len);
+
+#endif
+    if (!f) {
+        pico_err = PICO_ERR_ENOMEM;
+        return f;
+    }
+
+    f->payload = f->transport_hdr;
+    f->payload_len = len;
+    f->sock = s;
+    return f;
+}
+
+static void pico_transport_error_set_picoerr(int code)
+{
+    /* dbg("SOCKET ERROR FROM ICMP NOTIFICATION. (icmp code= %d)\n\n", code); */
+    switch(code) {
+    case PICO_ICMP_UNREACH_NET:
+        pico_err = PICO_ERR_ENETUNREACH;
+        break;
+
+    case PICO_ICMP_UNREACH_HOST:
+        pico_err = PICO_ERR_EHOSTUNREACH;
+        break;
+
+    case PICO_ICMP_UNREACH_PROTOCOL:
+        pico_err = PICO_ERR_ENOPROTOOPT;
+        break;
+
+    case PICO_ICMP_UNREACH_PORT:
+        pico_err = PICO_ERR_ECONNREFUSED;
+        break;
+
+    case PICO_ICMP_UNREACH_NET_UNKNOWN:
+        pico_err = PICO_ERR_ENETUNREACH;
+        break;
+
+    case PICO_ICMP_UNREACH_HOST_UNKNOWN:
+        pico_err = PICO_ERR_EHOSTDOWN;
+        break;
+
+    case PICO_ICMP_UNREACH_ISOLATED:
+        pico_err = PICO_ERR_ENONET;
+        break;
+
+    case PICO_ICMP_UNREACH_NET_PROHIB:
+    case PICO_ICMP_UNREACH_HOST_PROHIB:
+        pico_err = PICO_ERR_EHOSTUNREACH;
+        break;
+
+    default:
+        pico_err = PICO_ERR_EOPNOTSUPP;
+    }
+}
+
+int pico_transport_error(struct pico_frame *f, uint8_t proto, int code)
+{
+    int ret = -1;
+    struct pico_trans *trans = (struct pico_trans*) f->transport_hdr;
+    struct pico_sockport *port = NULL;
+    struct pico_socket *s = NULL;
+    switch (proto) {
+
+
+#ifdef PICO_SUPPORT_UDP
+    case PICO_PROTO_UDP:
+        port = pico_get_sockport(proto, trans->sport);
+        break;
+#endif
+
+#ifdef PICO_SUPPORT_TCP
+    case PICO_PROTO_TCP:
+        port = pico_get_sockport(proto, trans->sport);
+        break;
+#endif
+
+    default:
+        /* Protocol not available */
+        ret = -1;
+    }
+    if (port) {
+        struct pico_tree_node *index;
+        ret = 0;
+
+        pico_tree_foreach(index, &port->socks) {
+            s = index->keyValue;
+            if (trans->dport == s->remote_port) {
+                if (s->wakeup) {
+                    pico_transport_error_set_picoerr(code);
+                    s->state |= PICO_SOCKET_STATE_SHUT_REMOTE;
+                    s->wakeup(PICO_SOCK_EV_ERR, s);
+                }
+
+                break;
+            }
+        }
+    }
+
+    pico_frame_discard(f);
+    return ret;
+}
+#endif
+#endif
diff --git a/net/picotcp/stack/pico_socket_multicast.c b/net/picotcp/stack/pico_socket_multicast.c
new file mode 100644
index 0000000..f23327d
--- /dev/null
+++ b/net/picotcp/stack/pico_socket_multicast.c
@@ -0,0 +1,956 @@
+#include "pico_config.h"
+#include "pico_stack.h"
+#include "pico_socket.h"
+#include "pico_socket_multicast.h"
+#include "pico_tree.h"
+#include "pico_ipv4.h"
+#include "pico_udp.h"
+
+#ifdef PICO_SUPPORT_MCAST
+# define so_mcast_dbg(...) do {} while(0) /* ip_mcast_dbg in pico_ipv4.c */
+/* #define so_mcast_dbg dbg */
+
+/*                       socket
+ *                         |
+ *                    MCASTListen
+ *                    |    |     |
+ *         ------------    |     ------------
+ *         |               |                |
+ *   MCASTSources    MCASTSources     MCASTSources
+ *   |  |  |  |      |  |  |  |       |  |  |  |
+ *   S  S  S  S      S  S  S  S       S  S  S  S
+ *
+ *   MCASTListen: RBTree(mcast_link, mcast_group)
+ *   MCASTSources: RBTree(source)
+ */
+struct pico_mcast_listen
+{
+    uint8_t filter_mode;
+    union pico_address mcast_link;
+    union pico_address mcast_group;
+    struct pico_tree MCASTSources;
+    uint16_t proto;
+};
+
+static int mcast_listen_link_cmp(struct pico_mcast_listen *a, struct pico_mcast_listen *b)
+{
+
+    if (a->proto < b->proto)
+        return -1;
+
+    if (a->proto > b->proto)
+        return 1;
+
+    return pico_address_compare(&a->mcast_link, &b->mcast_link, a->proto);
+}
+
+static int mcast_listen_grp_cmp(struct pico_mcast_listen *a, struct pico_mcast_listen *b)
+{
+    if (a->mcast_group.ip4.addr < b->mcast_group.ip4.addr)
+        return -1;
+
+    if (a->mcast_group.ip4.addr > b->mcast_group.ip4.addr)
+        return 1;
+
+    return mcast_listen_link_cmp(a, b);
+}
+
+static int mcast_listen_cmp(void *ka, void *kb)
+{
+    struct pico_mcast_listen *a = ka, *b = kb;
+    if (a->proto < b->proto)
+        return -1;
+
+    if (a->proto > b->proto)
+        return 1;
+
+    return mcast_listen_grp_cmp(a, b);
+}
+
+static int mcast_sources_cmp(void *ka, void *kb)
+{
+    union pico_address *a = ka, *b = kb;
+    if (a->ip4.addr < b->ip4.addr)
+        return -1;
+
+    if (a->ip4.addr > b->ip4.addr)
+        return 1;
+
+    return 0;
+}
+
+static int mcast_socket_cmp(void *ka, void *kb)
+{
+    struct pico_socket *a = ka, *b = kb;
+    if (a < b)
+        return -1;
+
+    if (a > b)
+        return 1;
+
+    return 0;
+}
+
+/* gather all multicast sockets to hasten filter aggregation */
+PICO_TREE_DECLARE(MCASTSockets, mcast_socket_cmp);
+
+static int mcast_filter_cmp(void *ka, void *kb)
+{
+    union pico_address *a = ka, *b = kb;
+    if (a->ip4.addr < b->ip4.addr)
+        return -1;
+
+    if (a->ip4.addr > b->ip4.addr)
+        return 1;
+
+    return 0;
+}
+/* gather sources to be filtered */
+PICO_TREE_DECLARE(MCASTFilter, mcast_filter_cmp);
+
+static struct pico_mcast_listen *listen_find(struct pico_socket *s, union pico_address *lnk, union pico_address *grp)
+{
+    struct pico_mcast_listen ltest = {
+        0
+    };
+    ltest.mcast_link.ip4.addr = lnk->ip4.addr;
+    ltest.mcast_group.ip4.addr = grp->ip4.addr;
+    return pico_tree_findKey(s->MCASTListen, &ltest);
+}
+
+static uint8_t pico_mcast_filter_excl_excl(struct pico_mcast_listen *listen)
+{
+    /* filter = intersection of EXCLUDEs */
+    /* any record with filter mode EXCLUDE, causes the interface mode to be EXCLUDE */
+    /* remove from the interface EXCLUDE filter any source not in the socket EXCLUDE filter */
+    struct pico_tree_node *index = NULL, *_tmp = NULL;
+    union pico_address *source = NULL;
+    pico_tree_foreach_safe(index, &MCASTFilter, _tmp)
+    {
+        source = pico_tree_findKey(&listen->MCASTSources, index->keyValue);
+        if (!source)
+            pico_tree_delete(&MCASTFilter, index->keyValue);
+    }
+    return PICO_IP_MULTICAST_EXCLUDE;
+}
+
+static uint8_t pico_mcast_filter_excl_incl(struct pico_mcast_listen *listen)
+{
+    /* filter = EXCLUDE - INCLUDE */
+    /* any record with filter mode EXCLUDE, causes the interface mode to be EXCLUDE */
+    /* remove from the interface EXCLUDE filter any source in the socket INCLUDE filter */
+    struct pico_tree_node *index = NULL, *_tmp = NULL;
+    union pico_address *source = NULL;
+    pico_tree_foreach_safe(index, &listen->MCASTSources, _tmp)
+    {
+        source = pico_tree_findKey(&MCASTFilter, index->keyValue);
+        if (source)
+            pico_tree_delete(&MCASTFilter, source);
+    }
+    return PICO_IP_MULTICAST_EXCLUDE;
+}
+
+static uint8_t pico_mcast_filter_incl_excl(struct pico_mcast_listen *listen)
+{
+    /* filter = EXCLUDE - INCLUDE */
+    /* delete from the interface INCLUDE filter any source NOT in the socket EXCLUDE filter */
+    struct pico_tree_node *index = NULL, *_tmp = NULL, *index2 = NULL, *_tmp2 = NULL;
+    union pico_address *source = NULL;
+    pico_tree_foreach_safe(index2, &MCASTFilter, _tmp2)
+    {
+        source = pico_tree_findKey(&listen->MCASTSources, index2->keyValue);
+        if (!source)
+            pico_tree_delete(&MCASTFilter, index2->keyValue);
+    }
+    /* any record with filter mode EXCLUDE, causes the interface mode to be EXCLUDE */
+
+    /* add to the interface EXCLUDE filter any socket source NOT in the former interface INCLUDE filter */
+    pico_tree_foreach_safe(index, &listen->MCASTSources, _tmp)
+    {
+        source = pico_tree_insert(&MCASTFilter, index->keyValue);
+        if (source)
+            pico_tree_delete(&MCASTFilter, source);
+    }
+    return PICO_IP_MULTICAST_EXCLUDE;
+}
+
+static uint8_t pico_mcast_filter_incl_incl(struct pico_mcast_listen *listen)
+{
+    /* filter = summation of INCLUDEs */
+    /* mode stays INCLUDE, add all sources to filter */
+    struct pico_tree_node *index = NULL, *_tmp = NULL;
+    union pico_address *source = NULL;
+    pico_tree_foreach_safe(index, &listen->MCASTSources, _tmp)
+    {
+        source = index->keyValue;
+        pico_tree_insert(&MCASTFilter, source);
+    }
+    return PICO_IP_MULTICAST_INCLUDE;
+}
+
+struct pico_mcast_filter_aggregation
+{
+    uint8_t (*call)(struct pico_mcast_listen *);
+};
+
+static const struct pico_mcast_filter_aggregation mcast_filter_aggr_call[2][2] =
+{
+    {
+        /* EXCL + EXCL */ {.call = pico_mcast_filter_excl_excl},
+        /* EXCL + INCL */ {.call = pico_mcast_filter_excl_incl}
+    },
+
+    {
+        /* INCL + EXCL */ {.call = pico_mcast_filter_incl_excl},
+        /* INCL + INCL */ {.call = pico_mcast_filter_incl_incl}
+    }
+};
+
+static int mcast_aggr_validate(uint8_t fm, struct pico_mcast_listen *l)
+{
+    if (!l)
+        return -1;
+
+    if (fm > 1)
+        return -1;
+
+    if (l->filter_mode > 1)
+        return -1;
+
+    return 0;
+}
+
+
+/* MCASTFilter will be empty if no socket is listening on mcast_group on mcast_link anymore */
+static int pico_socket_aggregate_mcastfilters(union pico_address *mcast_link, union pico_address *mcast_group)
+{
+    uint8_t filter_mode = PICO_IP_MULTICAST_INCLUDE;
+    struct pico_mcast_listen *listen = NULL;
+    struct pico_socket *mcast_sock = NULL;
+    struct pico_tree_node *index = NULL, *_tmp = NULL;
+
+
+    /* cleanup old filter */
+    pico_tree_foreach_safe(index, &MCASTFilter, _tmp)
+    {
+        pico_tree_delete(&MCASTFilter, index->keyValue);
+    }
+
+    /* construct new filter */
+    pico_tree_foreach_safe(index, &MCASTSockets, _tmp)
+    {
+        mcast_sock = index->keyValue;
+        listen = listen_find(mcast_sock, mcast_link, mcast_group);
+        if (listen) {
+            if (mcast_aggr_validate(filter_mode, listen) < 0) {
+                pico_err = PICO_ERR_EINVAL;
+                return -1;
+            }
+
+            if (mcast_filter_aggr_call[filter_mode][listen->filter_mode].call) {
+                filter_mode = mcast_filter_aggr_call[filter_mode][listen->filter_mode].call(listen);
+                if (filter_mode > 1)
+                    return -1;
+            }
+        }
+    }
+    return filter_mode;
+}
+
+static int pico_socket_mcast_filter_include(struct pico_mcast_listen *listen, union pico_address *src)
+{
+    struct pico_tree_node *index = NULL;
+    pico_tree_foreach(index, &listen->MCASTSources)
+    {
+        if (src->ip4.addr == ((union pico_address *)index->keyValue)->ip4.addr) {
+            so_mcast_dbg("MCAST: IP %08X in included socket source list\n", src->ip4.addr);
+            return 0;
+        }
+    }
+    so_mcast_dbg("MCAST: IP %08X NOT in included socket source list\n", src->ip4.addr);
+    return -1;
+
+}
+
+static int pico_socket_mcast_filter_exclude(struct pico_mcast_listen *listen, union pico_address *src)
+{
+    struct pico_tree_node *index = NULL;
+    pico_tree_foreach(index, &listen->MCASTSources)
+    {
+        if (src->ip4.addr == ((union pico_address *)index->keyValue)->ip4.addr) {
+            so_mcast_dbg("MCAST: IP %08X in excluded socket source list\n", src->ip4.addr);
+            return -1;
+        }
+    }
+    so_mcast_dbg("MCAST: IP %08X NOT in excluded socket source list\n", src->ip4.addr);
+    return 0;
+}
+
+static int pico_socket_mcast_source_filtering(struct pico_mcast_listen *listen, union pico_address *src)
+{
+    /* perform source filtering */
+    if (listen->filter_mode == PICO_IP_MULTICAST_INCLUDE)
+        return pico_socket_mcast_filter_include(listen, src);
+
+    if (listen->filter_mode == PICO_IP_MULTICAST_EXCLUDE)
+        return pico_socket_mcast_filter_exclude(listen, src);
+
+    return -1;
+}
+
+static struct pico_ipv4_link *pico_socket_mcast_filter_link_get(struct pico_socket *s)
+{
+    /* check if no multicast enabled on socket */
+    if (!s->MCASTListen)
+        return NULL;
+
+    if (!s->local_addr.ip4.addr)
+        return pico_ipv4_get_default_mcastlink();
+
+    return pico_ipv4_link_get(&s->local_addr.ip4);
+}
+
+int pico_socket_mcast_filter(struct pico_socket *s, union pico_address *mcast_group, union pico_address *src)
+{
+    struct pico_ipv4_link *mcast_link = NULL;
+    struct pico_mcast_listen *listen = NULL;
+
+    mcast_link = pico_socket_mcast_filter_link_get(s);
+    if (!mcast_link)
+        return -1;
+
+    listen = listen_find(s, (union pico_address *)&mcast_link->address, mcast_group);
+    if (!listen)
+        return -1;
+
+    return pico_socket_mcast_source_filtering(listen, src);
+}
+
+static struct pico_ipv4_link *get_mcast_link(union pico_address *a)
+{
+    if (!a->ip4.addr)
+        return pico_ipv4_get_default_mcastlink();
+
+    return pico_ipv4_link_get(&a->ip4);
+}
+
+
+static int pico_socket_setoption_pre_validation(struct pico_ip_mreq *mreq)
+{
+    if (!mreq)
+        return -1;
+
+    if (!mreq->mcast_group_addr.addr)
+        return -1;
+
+    return 0;
+}
+
+static struct pico_ipv4_link *pico_socket_setoption_validate_mreq(struct pico_ip_mreq *mreq)
+{
+    if (pico_socket_setoption_pre_validation(mreq) < 0)
+        return NULL;
+
+    if (pico_ipv4_is_unicast(mreq->mcast_group_addr.addr))
+        return NULL;
+
+    return get_mcast_link((union pico_address *)&mreq->mcast_link_addr);
+}
+
+static int pico_socket_setoption_pre_validation_s(struct pico_ip_mreq_source *mreq)
+{
+    if (!mreq)
+        return -1;
+
+    if (!mreq->mcast_group_addr.addr)
+        return -1;
+
+    return 0;
+}
+
+static struct pico_ipv4_link *pico_socket_setoption_validate_s_mreq(struct pico_ip_mreq_source *mreq)
+{
+    if (pico_socket_setoption_pre_validation_s(mreq) < 0)
+        return NULL;
+
+    if (pico_ipv4_is_unicast(mreq->mcast_group_addr.addr))
+        return NULL;
+
+    if (!pico_ipv4_is_unicast(mreq->mcast_source_addr.addr))
+        return NULL;
+
+    return get_mcast_link((union pico_address *)&mreq->mcast_link_addr);
+}
+
+
+static struct pico_ipv4_link *setop_multicast_link_search(void *value, int bysource)
+{
+
+    struct pico_ip_mreq *mreq = NULL;
+    struct pico_ipv4_link *mcast_link = NULL;
+    struct pico_ip_mreq_source *mreq_src = NULL;
+    if (!bysource) {
+        mreq = (struct pico_ip_mreq *) value;
+        mcast_link = pico_socket_setoption_validate_mreq(mreq);
+        if (!mcast_link)
+            return NULL;
+
+        if (!mreq->mcast_link_addr.addr)
+            mreq->mcast_link_addr.addr = mcast_link->address.addr;
+    } else {
+        mreq_src = (struct pico_ip_mreq_source *) value;
+        if (!mreq_src)
+            return NULL;
+
+        mcast_link = pico_socket_setoption_validate_s_mreq(mreq_src);
+        if (!mcast_link)
+            return NULL;
+
+        if (!mreq_src->mcast_link_addr.addr)
+            mreq_src->mcast_link_addr.addr = mcast_link->address.addr;
+    }
+
+    return mcast_link;
+}
+
+static int setop_verify_listen_tree(struct pico_socket *s, int alloc)
+{
+    if(!alloc)
+        return -1;
+
+    s->MCASTListen = PICO_ZALLOC(sizeof(struct pico_tree));
+    if (!s->MCASTListen) {
+        pico_err = PICO_ERR_ENOMEM;
+        return -1;
+    }
+
+    s->MCASTListen->root = &LEAF;
+    s->MCASTListen->compare = mcast_listen_cmp;
+    return 0;
+}
+
+
+static struct pico_ipv4_link *setopt_multicast_check(struct pico_socket *s, void *value, int alloc, int bysource)
+{
+    struct pico_ipv4_link *mcast_link = NULL;
+
+    if (!value) {
+        pico_err = PICO_ERR_EINVAL;
+        return NULL;
+    }
+
+    mcast_link = setop_multicast_link_search(value, bysource);
+
+    if (!mcast_link) {
+        pico_err = PICO_ERR_EINVAL;
+        return NULL;
+    }
+
+    if (!s->MCASTListen) { /* No RBTree allocated yet */
+        if (setop_verify_listen_tree(s, alloc) < 0)
+            return NULL;
+    }
+
+    return mcast_link;
+}
+
+
+void pico_multicast_delete(struct pico_socket *s)
+{
+    int filter_mode;
+    struct pico_tree_node *index = NULL, *_tmp = NULL, *index2 = NULL, *_tmp2 = NULL;
+    struct pico_mcast_listen *listen = NULL;
+    union pico_address *source = NULL;
+    if (s->MCASTListen) {
+        pico_tree_delete(&MCASTSockets, s);
+        pico_tree_foreach_safe(index, s->MCASTListen, _tmp)
+        {
+            listen = index->keyValue;
+            pico_tree_foreach_safe(index2, &listen->MCASTSources, _tmp2)
+            {
+                source = index->keyValue;
+                pico_tree_delete(&listen->MCASTSources, source);
+                PICO_FREE(source);
+            }
+            filter_mode = pico_socket_aggregate_mcastfilters((union pico_address *)&listen->mcast_link, (union pico_address *)&listen->mcast_group);
+            if (filter_mode >= 0)
+                pico_ipv4_mcast_leave(&listen->mcast_link.ip4, &listen->mcast_group.ip4, 1, (uint8_t)filter_mode, &MCASTFilter);
+
+            pico_tree_delete(s->MCASTListen, listen);
+            PICO_FREE(listen);
+        }
+        PICO_FREE(s->MCASTListen);
+    }
+}
+
+
+int pico_getsockopt_mcast(struct pico_socket *s, int option, void *value)
+{
+    switch(option) {
+    case PICO_IP_MULTICAST_IF:
+        pico_err = PICO_ERR_EOPNOTSUPP;
+        return -1;
+
+    case PICO_IP_MULTICAST_TTL:
+        if (s->proto->proto_number == PICO_PROTO_UDP) {
+            pico_udp_get_mc_ttl(s, (uint8_t *) value);
+        } else {
+            *(uint8_t *)value = 0;
+            pico_err = PICO_ERR_EINVAL;
+            return -1;
+        }
+
+        break;
+
+    case PICO_IP_MULTICAST_LOOP:
+        if (s->proto->proto_number == PICO_PROTO_UDP) {
+            *(uint8_t *)value = (uint8_t)PICO_SOCKET_GETOPT(s, PICO_SOCKET_OPT_MULTICAST_LOOP);
+        } else {
+            *(uint8_t *)value = 0;
+            pico_err = PICO_ERR_EINVAL;
+            return -1;
+        }
+
+        break;
+    default:
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+    return 0;
+}
+
+static int mcast_so_loop(struct pico_socket *s, void *value)
+{
+    uint8_t val = (*(uint8_t *)value);
+    if (val == 0u) {
+        PICO_SOCKET_SETOPT_DIS(s, PICO_SOCKET_OPT_MULTICAST_LOOP);
+        return 0;
+    } else if (val == 1u) {
+        PICO_SOCKET_SETOPT_EN(s, PICO_SOCKET_OPT_MULTICAST_LOOP);
+        return 0;
+    }
+
+    pico_err = PICO_ERR_EINVAL;
+    return -1;
+}
+
+static int mcast_so_addm(struct pico_socket *s, void *value)
+{
+    int filter_mode;
+    struct pico_mcast_listen *listen;
+    struct pico_ip_mreq *mreq = (struct pico_ip_mreq *)value;
+    struct pico_ipv4_link *mcast_link = setopt_multicast_check(s, value, 1, 0);
+    if (!mcast_link)
+        return -1;
+
+    listen = listen_find(s, (union pico_address *)&mreq->mcast_link_addr, (union pico_address *)&mreq->mcast_group_addr);
+    if (listen) {
+        if (listen->filter_mode != PICO_IP_MULTICAST_EXCLUDE) {
+            so_mcast_dbg("pico_socket_setoption: ERROR any-source multicast (exclude) on source-specific multicast (include)\n");
+            pico_err = PICO_ERR_EINVAL;
+            return -1;
+        } else {
+            so_mcast_dbg("pico_socket_setoption: ERROR duplicate PICO_IP_ADD_MEMBERSHIP\n");
+            pico_err = PICO_ERR_EINVAL;
+            return -1;
+        }
+    } else {
+        listen = PICO_ZALLOC(sizeof(struct pico_mcast_listen));
+        if (!listen) {
+            pico_err = PICO_ERR_ENOMEM;
+            return -1;
+        }
+
+        listen->filter_mode = PICO_IP_MULTICAST_EXCLUDE;
+        listen->mcast_link.ip4 = mreq->mcast_link_addr;
+        listen->mcast_group.ip4 = mreq->mcast_group_addr;
+        listen->MCASTSources.root = &LEAF;
+        listen->MCASTSources.compare = mcast_sources_cmp;
+        listen->proto = s->net->proto_number;
+        pico_tree_insert(s->MCASTListen, listen);
+    }
+
+    pico_tree_insert(&MCASTSockets, s);
+    filter_mode = pico_socket_aggregate_mcastfilters((union pico_address *)&mcast_link->address, (union pico_address *)&mreq->mcast_group_addr);
+    if (filter_mode < 0)
+        return -1;
+
+    so_mcast_dbg("PICO_IP_ADD_MEMBERSHIP - success, added %p\n", s);
+    return pico_ipv4_mcast_join(&mreq->mcast_link_addr, &mreq->mcast_group_addr, 1, (uint8_t)filter_mode, &MCASTFilter);
+}
+
+static int mcast_so_dropm(struct pico_socket *s, void *value)
+{
+    int filter_mode = 0;
+    struct pico_mcast_listen *listen;
+    struct pico_ip_mreq *mreq = (struct pico_ip_mreq *)value;
+    union pico_address *source = NULL;
+    struct pico_tree_node *index, *_tmp;
+    struct pico_ipv4_link *mcast_link = setopt_multicast_check(s, value, 0, 0);
+    if (!mcast_link)
+        return -1;
+
+    listen = listen_find(s, (union pico_address *)&mreq->mcast_link_addr, (union pico_address *)&mreq->mcast_group_addr);
+    if (!listen) {
+        so_mcast_dbg("pico_socket_setoption: ERROR PICO_IP_DROP_MEMBERSHIP before PICO_IP_ADD_MEMBERSHIP/SOURCE_MEMBERSHIP\n");
+        pico_err = PICO_ERR_EADDRNOTAVAIL;
+        return -1;
+    } else {
+        pico_tree_foreach_safe(index, &listen->MCASTSources, _tmp)
+        {
+            source = index->keyValue;
+            pico_tree_delete(&listen->MCASTSources, source);
+        }
+        pico_tree_delete(s->MCASTListen, listen);
+        PICO_FREE(listen);
+        if (pico_tree_empty(s->MCASTListen)) {
+            PICO_FREE(s->MCASTListen);
+            s->MCASTListen = NULL;
+            pico_tree_delete(&MCASTSockets, s);
+        }
+    }
+
+    filter_mode = pico_socket_aggregate_mcastfilters((union pico_address *)&mcast_link->address, (union pico_address *)&mreq->mcast_group_addr);
+    if (filter_mode < 0)
+        return -1;
+
+    return pico_ipv4_mcast_leave(&mreq->mcast_link_addr, &mreq->mcast_group_addr, 1, (uint8_t)filter_mode, &MCASTFilter);
+}
+
+static int mcast_so_unblock_src(struct pico_socket *s, void *value)
+{
+    int filter_mode = 0;
+    struct pico_ip_mreq_source *mreq = (struct pico_ip_mreq_source *)value;
+    struct pico_mcast_listen *listen = NULL;
+    union pico_address *source = NULL, stest;
+    struct pico_ipv4_link *mcast_link = setopt_multicast_check(s, value, 0, 1);
+
+    memset(&stest, 0, sizeof(union pico_address));
+    if (!mcast_link)
+        return -1;
+
+
+    listen = listen_find(s, (union pico_address *) &mreq->mcast_link_addr, (union pico_address *) &mreq->mcast_group_addr);
+    if (!listen) {
+        so_mcast_dbg("pico_socket_setoption: ERROR PICO_IP_UNBLOCK_SOURCE before PICO_IP_ADD_MEMBERSHIP\n");
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    } else {
+        if (listen->filter_mode != PICO_IP_MULTICAST_EXCLUDE) {
+            so_mcast_dbg("pico_socket_setoption: ERROR any-source multicast (exclude) on source-specific multicast (include)\n");
+            pico_err = PICO_ERR_EINVAL;
+            return -1;
+        }
+
+        stest.ip4.addr = mreq->mcast_source_addr.addr;
+        source = pico_tree_findKey(&listen->MCASTSources, &stest);
+        if (!source) {
+            so_mcast_dbg("pico_socket_setoption: ERROR address to unblock not in source list\n");
+            pico_err = PICO_ERR_EADDRNOTAVAIL;
+            return -1;
+        } else {
+            pico_tree_delete(&listen->MCASTSources, source);
+        }
+    }
+
+    filter_mode = pico_socket_aggregate_mcastfilters((union pico_address *)&mcast_link->address, (union pico_address *)&mreq->mcast_group_addr);
+    if (filter_mode < 0)
+        return -1;
+
+    return pico_ipv4_mcast_leave(&mreq->mcast_link_addr, &mreq->mcast_group_addr, 0, (uint8_t)filter_mode, &MCASTFilter);
+}
+
+static int mcast_so_block_src(struct pico_socket *s, void *value)
+{
+    int filter_mode = 0;
+    struct pico_ip_mreq_source *mreq = (struct pico_ip_mreq_source *)value;
+    struct pico_mcast_listen *listen;
+    union pico_address *source, stest;
+    struct pico_ipv4_link *mcast_link = setopt_multicast_check(s, value, 0, 1);
+    if (!mcast_link)
+        return -1;
+
+    memset(&stest, 0, sizeof(union pico_address));
+
+    listen = listen_find(s, (union pico_address *)&mreq->mcast_link_addr, (union pico_address *)&mreq->mcast_group_addr);
+    if (!listen) {
+        dbg("pico_socket_setoption: ERROR PICO_IP_BLOCK_SOURCE before PICO_IP_ADD_MEMBERSHIP\n");
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    } else {
+        if (listen->filter_mode != PICO_IP_MULTICAST_EXCLUDE) {
+            so_mcast_dbg("pico_socket_setoption: ERROR any-source multicast (exclude) on source-specific multicast (include)\n");
+            pico_err = PICO_ERR_EINVAL;
+            return -1;
+        }
+
+        stest.ip4.addr = mreq->mcast_source_addr.addr;
+        source = pico_tree_findKey(&listen->MCASTSources, &stest);
+        if (source) {
+            so_mcast_dbg("pico_socket_setoption: ERROR address to block already in source list\n");
+            pico_err = PICO_ERR_EADDRNOTAVAIL;
+            return -1;
+        } else {
+            source = PICO_ZALLOC(sizeof(union pico_address));
+            if (!source) {
+                pico_err = PICO_ERR_ENOMEM;
+                return -1;
+            }
+
+            source->ip4.addr = mreq->mcast_source_addr.addr;
+            pico_tree_insert(&listen->MCASTSources, source);
+        }
+    }
+
+    filter_mode = pico_socket_aggregate_mcastfilters((union pico_address *)&mcast_link->address, (union pico_address *)&mreq->mcast_group_addr);
+    if (filter_mode < 0)
+        return -1;
+
+    return pico_ipv4_mcast_join(&mreq->mcast_link_addr, &mreq->mcast_group_addr, 0, (uint8_t)filter_mode, &MCASTFilter);
+}
+
+static int mcast_so_addsrcm(struct pico_socket *s, void *value)
+{
+    int filter_mode = 0, reference_count = 0;
+    struct pico_ip_mreq_source *mreq = (struct pico_ip_mreq_source *)value;
+    struct pico_mcast_listen *listen = NULL;
+    union pico_address *source = NULL, stest;
+    struct pico_ipv4_link *mcast_link = setopt_multicast_check(s, value, 1, 1);
+    if (!mcast_link)
+        return -1;
+
+    memset(&stest, 0, sizeof(union pico_address));
+
+    listen = listen_find(s, (union pico_address *)&mreq->mcast_link_addr, (union pico_address *) &mreq->mcast_group_addr);
+    if (listen) {
+        if (listen->filter_mode != PICO_IP_MULTICAST_INCLUDE) {
+            so_mcast_dbg("pico_socket_setoption: ERROR source-specific multicast (include) on any-source multicast (exclude)\n");
+            pico_err = PICO_ERR_EINVAL;
+            return -1;
+        }
+
+        stest.ip4.addr = mreq->mcast_source_addr.addr;
+        source = pico_tree_findKey(&listen->MCASTSources, &stest);
+        if (source) {
+            so_mcast_dbg("pico_socket_setoption: ERROR source address to allow already in source list\n");
+            pico_err = PICO_ERR_EADDRNOTAVAIL;
+            return -1;
+        } else {
+            source = PICO_ZALLOC(sizeof(union pico_address));
+            if (!source) {
+                pico_err = PICO_ERR_ENOMEM;
+                return -1;
+            }
+
+            source->ip4.addr = mreq->mcast_source_addr.addr;
+            pico_tree_insert(&listen->MCASTSources, source);
+        }
+    } else {
+        listen = PICO_ZALLOC(sizeof(struct pico_mcast_listen));
+        if (!listen) {
+            pico_err = PICO_ERR_ENOMEM;
+            return -1;
+        }
+
+        listen->filter_mode = PICO_IP_MULTICAST_INCLUDE;
+        listen->mcast_link.ip4 = mreq->mcast_link_addr;
+        listen->mcast_group.ip4 = mreq->mcast_group_addr;
+        listen->MCASTSources.root = &LEAF;
+        listen->MCASTSources.compare = mcast_sources_cmp;
+        source = PICO_ZALLOC(sizeof(union pico_address));
+        if (!source) {
+            PICO_FREE(listen);
+            pico_err = PICO_ERR_ENOMEM;
+            return -1;
+        }
+
+        source->ip4.addr = mreq->mcast_source_addr.addr;
+        pico_tree_insert(&listen->MCASTSources, source);
+        pico_tree_insert(s->MCASTListen, listen);
+        reference_count = 1;
+    }
+
+    pico_tree_insert(&MCASTSockets, s);
+    filter_mode = pico_socket_aggregate_mcastfilters((union pico_address *)&mcast_link->address, (union pico_address *)&mreq->mcast_group_addr);
+    if (filter_mode < 0)
+        return -1;
+
+    return pico_ipv4_mcast_join(&mreq->mcast_link_addr, &mreq->mcast_group_addr, (uint8_t)reference_count, (uint8_t)filter_mode, &MCASTFilter);
+}
+
+static int mcast_so_dropsrcm(struct pico_socket *s, void *value)
+{
+    int filter_mode = 0, reference_count = 0;
+    struct pico_ip_mreq_source *mreq = (struct pico_ip_mreq_source *)value;
+    struct pico_mcast_listen *listen;
+    union pico_address *source, stest;
+    struct pico_ipv4_link *mcast_link = setopt_multicast_check(s, value, 0, 1);
+    if (!mcast_link)
+        return -1;
+
+    memset(&stest, 0, sizeof(union pico_address));
+
+    listen = listen_find(s, (union pico_address *)&mreq->mcast_link_addr, (union pico_address *)&mreq->mcast_group_addr);
+    if (!listen) {
+        so_mcast_dbg("pico_socket_setoption: ERROR PICO_IP_DROP_SOURCE_MEMBERSHIP before PICO_IP_ADD_SOURCE_MEMBERSHIP\n");
+        pico_err = PICO_ERR_EADDRNOTAVAIL;
+        return -1;
+    } else {
+        if (listen->filter_mode != PICO_IP_MULTICAST_INCLUDE) {
+            so_mcast_dbg("pico_socket_setoption: ERROR source-specific multicast (include) on any-source multicast (exclude)\n");
+            pico_err = PICO_ERR_EINVAL;
+            return -1;
+        }
+
+        stest.ip4.addr = mreq->mcast_source_addr.addr;
+        source = pico_tree_findKey(&listen->MCASTSources, &stest);
+        if (!source) {
+            so_mcast_dbg("pico_socket_setoption: ERROR address to drop not in source list\n");
+            pico_err = PICO_ERR_EADDRNOTAVAIL;
+            return -1;
+        } else {
+            pico_tree_delete(&listen->MCASTSources, source);
+            if (pico_tree_empty(&listen->MCASTSources)) { /* 1 if empty, 0 otherwise */
+                reference_count = 1;
+                pico_tree_delete(s->MCASTListen, listen);
+                PICO_FREE(listen);
+                if (pico_tree_empty(s->MCASTListen)) {
+                    PICO_FREE(s->MCASTListen);
+                    s->MCASTListen = NULL;
+                    pico_tree_delete(&MCASTSockets, s);
+                }
+            }
+        }
+    }
+
+    filter_mode = pico_socket_aggregate_mcastfilters((union pico_address *)&mcast_link->address, (union pico_address *)&mreq->mcast_group_addr);
+    if (filter_mode < 0)
+        return -1;
+
+    return pico_ipv4_mcast_leave(&mreq->mcast_link_addr, &mreq->mcast_group_addr, (uint8_t)reference_count, (uint8_t)filter_mode, &MCASTFilter);
+}
+
+struct pico_setsockopt_mcast_call
+{
+    int option;
+    int (*call)(struct pico_socket *, void *);
+};
+
+static const struct pico_setsockopt_mcast_call mcast_so_calls[1 + PICO_IP_DROP_SOURCE_MEMBERSHIP - PICO_IP_MULTICAST_IF] =
+{
+    { PICO_IP_MULTICAST_IF,             NULL },
+    { PICO_IP_MULTICAST_TTL,            pico_udp_set_mc_ttl },
+    { PICO_IP_MULTICAST_LOOP,           mcast_so_loop },
+    { PICO_IP_ADD_MEMBERSHIP,           mcast_so_addm },
+    { PICO_IP_DROP_MEMBERSHIP,          mcast_so_dropm },
+    { PICO_IP_UNBLOCK_SOURCE,           mcast_so_unblock_src },
+    { PICO_IP_BLOCK_SOURCE,             mcast_so_block_src },
+    { PICO_IP_ADD_SOURCE_MEMBERSHIP,    mcast_so_addsrcm },
+    { PICO_IP_DROP_SOURCE_MEMBERSHIP,   mcast_so_dropsrcm }
+};
+
+
+static int mcast_so_check_socket(struct pico_socket *s)
+{
+    pico_err = PICO_ERR_EINVAL;
+    if (!s)
+        return -1;
+
+    if (!s->proto)
+        return -1;
+
+    if (s->proto->proto_number != PICO_PROTO_UDP)
+        return -1;
+
+    pico_err = PICO_ERR_NOERR;
+    return 0;
+}
+
+int pico_setsockopt_mcast(struct pico_socket *s, int option, void *value)
+{
+    int arrayn = option - PICO_IP_MULTICAST_IF;
+    if (option < PICO_IP_MULTICAST_IF || option > PICO_IP_DROP_SOURCE_MEMBERSHIP) {
+        pico_err = PICO_ERR_EOPNOTSUPP;
+        return -1;
+    }
+
+    if (mcast_so_check_socket(s) < 0)
+        return -1;
+
+    if (!mcast_so_calls[arrayn].call) {
+        pico_err = PICO_ERR_EOPNOTSUPP;
+        return -1;
+    }
+
+    return (mcast_so_calls[arrayn].call(s, value));
+}
+
+int pico_udp_set_mc_ttl(struct pico_socket *s, void  *_ttl)
+{
+    struct pico_socket_udp *u;
+    uint8_t ttl = *(uint8_t *)_ttl;
+    if(!s) {
+        pico_err = PICO_ERR_EINVAL;
+        return -1;
+    }
+
+    u = (struct pico_socket_udp *) s;
+    u->mc_ttl = ttl;
+    return 0;
+}
+
+int pico_udp_get_mc_ttl(struct pico_socket *s, uint8_t *ttl)
+{
+    struct pico_socket_udp *u;
+    if(!s)
+        return -1;
+
+    u = (struct pico_socket_udp *) s;
+    *ttl = u->mc_ttl;
+    return 0;
+}
+#else
+int pico_udp_set_mc_ttl(struct pico_socket *s, void  *_ttl)
+{
+    pico_err = PICO_ERR_EPROTONOSUPPORT;
+    return -1;
+}
+
+int pico_udp_get_mc_ttl(struct pico_socket *s, uint8_t *ttl)
+{
+    pico_err = PICO_ERR_EPROTONOSUPPORT;
+    return -1;
+}
+
+int pico_socket_mcast_filter(struct pico_socket *s, union pico_address *mcast_group, union pico_address *src)
+{
+    pico_err = PICO_ERR_EPROTONOSUPPORT;
+    return -1;
+}
+
+void pico_multicast_delete(struct pico_socket *s)
+{
+    (void)s;
+}
+
+int pico_getsockopt_mcast(struct pico_socket *s, int option, void *value)
+{
+    (void)s;
+    (void)option;
+    (void)value;
+    pico_err = PICO_ERR_EPROTONOSUPPORT;
+    return -1;
+}
+
+int pico_setsockopt_mcast(struct pico_socket *s, int option, void *value)
+{
+    (void)s;
+    (void)option;
+    (void)value;
+    pico_err = PICO_ERR_EPROTONOSUPPORT;
+    return -1;
+
+}
+#endif /* PICO_SUPPORT_MCAST */
+
diff --git a/net/picotcp/stack/pico_stack.c b/net/picotcp/stack/pico_stack.c
new file mode 100644
index 0000000..b4fcdd6
--- /dev/null
+++ b/net/picotcp/stack/pico_stack.c
@@ -0,0 +1,1157 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   .
+
+   Authors: Daniele Lacamera
+ *********************************************************************/
+
+
+#include "pico_config.h"
+#include "pico_frame.h"
+#include "pico_device.h"
+#include "pico_protocol.h"
+#include "pico_stack.h"
+#include "pico_addressing.h"
+#include "pico_dns_client.h"
+
+#include "pico_olsr.h"
+#include "pico_aodv.h"
+#include "pico_eth.h"
+#include "pico_arp.h"
+#include "pico_ipv4.h"
+#include "pico_ipv6.h"
+#include "pico_icmp4.h"
+#include "pico_icmp6.h"
+#include "pico_igmp.h"
+#include "pico_udp.h"
+#include "pico_tcp.h"
+#include "pico_socket.h"
+#include "heap.h"
+
+#define IS_LIMITED_BCAST(f) (((struct pico_ipv4_hdr *) f->net_hdr)->dst.addr == PICO_IP4_BCAST)
+
+const uint8_t PICO_ETHADDR_ALL[6] = {
+    0xff, 0xff, 0xff, 0xff, 0xff, 0xff
+};
+
+# define PICO_SIZE_MCAST 3
+const uint8_t PICO_ETHADDR_MCAST[6] = {
+    0x01, 0x00, 0x5e, 0x00, 0x00, 0x00
+};
+
+#ifdef PICO_SUPPORT_IPV6
+# define PICO_SIZE_MCAST6 2
+const uint8_t PICO_ETHADDR_MCAST6[6] = {
+    0x33, 0x33, 0x00, 0x00, 0x00, 0x00
+};
+#endif
+
+
+volatile pico_time pico_tick;
+volatile pico_err_t pico_err;
+
+static uint32_t _rand_seed;
+
+void WEAK pico_rand_feed(uint32_t feed)
+{
+    if (!feed)
+        return;
+
+    _rand_seed *= 1664525;
+    _rand_seed += 1013904223;
+    _rand_seed ^= ~(feed);
+}
+
+uint32_t WEAK pico_rand(void)
+{
+    pico_rand_feed((uint32_t)pico_tick);
+    return _rand_seed;
+}
+
+void pico_to_lowercase(char *str)
+{
+    int i = 0;
+    if (!str)
+        return;
+
+    while(str[i]) {
+        if ((str[i] <= 'Z') && (str[i] >= 'A'))
+            str[i] = (char) (str[i] - (char)('A' - 'a'));
+
+        i++;
+    }
+}
+
+/* NOTIFICATIONS: distributed notifications for stack internal errors.
+ */
+
+int pico_notify_socket_unreachable(struct pico_frame *f)
+{
+    if (0) {}
+
+#ifdef PICO_SUPPORT_ICMP4
+    else if (IS_IPV4(f)) {
+        pico_icmp4_port_unreachable(f);
+    }
+#endif
+#ifdef PICO_SUPPORT_ICMP6
+    else if (IS_IPV6(f)) {
+        pico_icmp6_port_unreachable(f);
+    }
+#endif
+
+    return 0;
+}
+
+int pico_notify_proto_unreachable(struct pico_frame *f)
+{
+    if (0) {}
+
+#ifdef PICO_SUPPORT_ICMP4
+    else if (IS_IPV4(f)) {
+        pico_icmp4_proto_unreachable(f);
+    }
+#endif
+#ifdef PICO_SUPPORT_ICMP6
+    else if (IS_IPV6(f)) {
+        pico_icmp6_proto_unreachable(f);
+    }
+#endif
+    return 0;
+}
+
+int pico_notify_dest_unreachable(struct pico_frame *f)
+{
+    if (0) {}
+
+#ifdef PICO_SUPPORT_ICMP4
+    else if (IS_IPV4(f)) {
+        pico_icmp4_dest_unreachable(f);
+    }
+#endif
+#ifdef PICO_SUPPORT_ICMP6
+    else if (IS_IPV6(f)) {
+        pico_icmp6_dest_unreachable(f);
+    }
+#endif
+    return 0;
+}
+
+int pico_notify_ttl_expired(struct pico_frame *f)
+{
+    if (0) {}
+
+#ifdef PICO_SUPPORT_ICMP4
+    else if (IS_IPV4(f)) {
+        pico_icmp4_ttl_expired(f);
+    }
+#endif
+#ifdef PICO_SUPPORT_ICMP6
+    else if (IS_IPV6(f)) {
+        pico_icmp6_ttl_expired(f);
+    }
+#endif
+    return 0;
+}
+
+int pico_notify_frag_expired(struct pico_frame *f)
+{
+    if (0) {}
+
+#ifdef PICO_SUPPORT_ICMP4
+    else if (IS_IPV4(f)) {
+        pico_icmp4_frag_expired(f);
+    }
+#endif
+#ifdef PICO_SUPPORT_ICMP6
+    else if (IS_IPV6(f)) {
+        pico_icmp6_frag_expired(f);
+    }
+#endif
+    return 0;
+}
+
+int pico_notify_pkt_too_big(struct pico_frame *f)
+{
+    if (0) {}
+
+#ifdef PICO_SUPPORT_ICMP4
+    else if (IS_IPV4(f)) {
+        pico_icmp4_mtu_exceeded(f);
+    }
+#endif
+#ifdef PICO_SUPPORT_ICMP6
+    else if (IS_IPV6(f)) {
+        pico_icmp6_pkt_too_big(f);
+    }
+#endif
+    return 0;
+}
+
+
+/* Transport layer */
+MOCKABLE int32_t pico_transport_receive(struct pico_frame *f, uint8_t proto)
+{
+    int32_t ret = -1;
+    switch (proto) {
+
+#ifdef PICO_SUPPORT_ICMP4
+    case PICO_PROTO_ICMP4:
+        ret = pico_enqueue(pico_proto_icmp4.q_in, f);
+        break;
+#endif
+
+#ifdef PICO_SUPPORT_ICMP6
+    case PICO_PROTO_ICMP6:
+        ret = pico_enqueue(pico_proto_icmp6.q_in, f);
+        break;
+#endif
+
+
+#ifdef PICO_SUPPORT_IGMP
+    case PICO_PROTO_IGMP:
+        ret = pico_enqueue(pico_proto_igmp.q_in, f);
+        break;
+#endif
+
+#ifdef PICO_SUPPORT_UDP
+    case PICO_PROTO_UDP:
+        ret = pico_enqueue(pico_proto_udp.q_in, f);
+        break;
+#endif
+
+#ifdef PICO_SUPPORT_TCP
+    case PICO_PROTO_TCP:
+        ret = pico_enqueue(pico_proto_tcp.q_in, f);
+        break;
+#endif
+
+    default:
+        /* Protocol not available */
+        dbg("pkt: no such protocol (%d)\n", proto);
+        pico_notify_proto_unreachable(f);
+        pico_frame_discard(f);
+        ret = -1;
+    }
+    return ret;
+}
+
+int32_t pico_network_receive(struct pico_frame *f)
+{
+    if (0) {}
+
+#ifdef PICO_SUPPORT_IPV4
+    else if (IS_IPV4(f)) {
+        pico_enqueue(pico_proto_ipv4.q_in, f);
+    }
+#endif
+#ifdef PICO_SUPPORT_IPV6
+    else if (IS_IPV6(f)) {
+        pico_enqueue(pico_proto_ipv6.q_in, f);
+    }
+#endif
+    else {
+        dbg("Network not found.\n");
+        pico_frame_discard(f);
+        return -1;
+    }
+    return (int32_t)f->buffer_len;
+}
+
+/* Network layer: interface towards socket for frame sending */
+int32_t pico_network_send(struct pico_frame *f)
+{
+    if (!f || !f->sock || !f->sock->net) {
+        pico_frame_discard(f);
+        return -1;
+    }
+
+    return f->sock->net->push(f->sock->net, f);
+}
+
+int pico_source_is_local(struct pico_frame *f)
+{
+    if (0) { }
+
+#ifdef PICO_SUPPORT_IPV4
+    else if (IS_IPV4(f)) {
+        struct pico_ipv4_hdr *hdr = (struct pico_ipv4_hdr *)f->net_hdr;
+        if (hdr->src.addr == PICO_IPV4_INADDR_ANY)
+            return 1;
+
+        if (pico_ipv4_link_find(&hdr->src))
+            return 1;
+    }
+#endif
+#ifdef PICO_SUPPORT_IPV6
+    else if (IS_IPV6(f)) {
+        struct pico_ipv6_hdr *hdr = (struct pico_ipv6_hdr *)f->net_hdr;
+        if (pico_ipv6_is_unspecified(hdr->src.addr) || pico_ipv6_link_find(&hdr->src))
+            return 1;
+    }
+#endif
+    return 0;
+}
+
+#ifdef PICO_SUPPORT_ETH
+/* DATALINK LEVEL: interface from network to the device
+ * and vice versa.
+ */
+
+/* The pico_ethernet_receive() function is used by
+ * those devices supporting ETH in order to push packets up
+ * into the stack.
+ */
+
+static int destination_is_bcast(struct pico_frame *f)
+{
+    if (!f)
+        return 0;
+
+    if (IS_IPV6(f))
+        return 0;
+
+#ifdef PICO_SUPPORT_IPV4
+    else {
+        struct pico_ipv4_hdr *hdr = (struct pico_ipv4_hdr *) f->net_hdr;
+        return pico_ipv4_is_broadcast(hdr->dst.addr);
+    }
+#else
+    return 0;
+#endif
+}
+
+static int destination_is_mcast(struct pico_frame *f)
+{
+    int ret = 0;
+    if (!f)
+        return 0;
+
+#ifdef PICO_SUPPORT_IPV6
+    if (IS_IPV6(f)) {
+        struct pico_ipv6_hdr *hdr = (struct pico_ipv6_hdr *) f->net_hdr;
+        ret = pico_ipv6_is_multicast(hdr->dst.addr);
+    }
+
+#endif
+#ifdef PICO_SUPPORT_IPV4
+    else {
+        struct pico_ipv4_hdr *hdr = (struct pico_ipv4_hdr *) f->net_hdr;
+        ret = pico_ipv4_is_multicast(hdr->dst.addr);
+    }
+#endif
+
+    return ret;
+}
+
+#ifdef PICO_SUPPORT_IPV4
+static int32_t pico_ipv4_ethernet_receive(struct pico_frame *f)
+{
+    if (IS_IPV4(f)) {
+        pico_enqueue(pico_proto_ipv4.q_in, f);
+    } else {
+        (void)pico_icmp4_param_problem(f, 0);
+        pico_frame_discard(f);
+        return -1;
+    }
+
+    return (int32_t)f->buffer_len;
+}
+#endif
+
+#ifdef PICO_SUPPORT_IPV6
+static int32_t pico_ipv6_ethernet_receive(struct pico_frame *f)
+{
+    if (IS_IPV6(f)) {
+        pico_enqueue(pico_proto_ipv6.q_in, f);
+    } else {
+        /* Wrong version for link layer type */
+        pico_frame_discard(f);
+        return -1;
+    }
+
+    return (int32_t)f->buffer_len;
+}
+#endif
+
+static int32_t pico_ll_receive(struct pico_frame *f)
+{
+    struct pico_eth_hdr *hdr = (struct pico_eth_hdr *) f->datalink_hdr;
+    f->net_hdr = f->datalink_hdr + sizeof(struct pico_eth_hdr);
+
+#if (defined PICO_SUPPORT_IPV4) && (defined PICO_SUPPORT_ETH)
+    if (hdr->proto == PICO_IDETH_ARP)
+        return pico_arp_receive(f);
+
+#endif
+
+#if defined (PICO_SUPPORT_IPV4)
+    if (hdr->proto == PICO_IDETH_IPV4)
+        return pico_ipv4_ethernet_receive(f);
+
+#endif
+
+#if defined (PICO_SUPPORT_IPV6)
+    if (hdr->proto == PICO_IDETH_IPV6)
+        return pico_ipv6_ethernet_receive(f);
+
+#endif
+
+    pico_frame_discard(f);
+    return -1;
+}
+
+static void pico_ll_check_bcast(struct pico_frame *f)
+{
+    struct pico_eth_hdr *hdr = (struct pico_eth_hdr *) f->datalink_hdr;
+    /* Indicate a link layer broadcast packet */
+    if (memcmp(hdr->daddr, PICO_ETHADDR_ALL, PICO_SIZE_ETH) == 0)
+        f->flags |= PICO_FRAME_FLAG_BCAST;
+}
+
+int32_t pico_ethernet_receive(struct pico_frame *f)
+{
+    struct pico_eth_hdr *hdr;
+    if (!f || !f->dev || !f->datalink_hdr)
+    {
+        pico_frame_discard(f);
+        return -1;
+    }
+
+    hdr = (struct pico_eth_hdr *) f->datalink_hdr;
+    if ((memcmp(hdr->daddr, f->dev->eth->mac.addr, PICO_SIZE_ETH) != 0) &&
+        (memcmp(hdr->daddr, PICO_ETHADDR_MCAST, PICO_SIZE_MCAST) != 0) &&
+#ifdef PICO_SUPPORT_IPV6
+        (memcmp(hdr->daddr, PICO_ETHADDR_MCAST6, PICO_SIZE_MCAST6) != 0) &&
+#endif
+        (memcmp(hdr->daddr, PICO_ETHADDR_ALL, PICO_SIZE_ETH) != 0))
+    {
+        pico_frame_discard(f);
+        return -1;
+    }
+
+    pico_ll_check_bcast(f);
+    return pico_ll_receive(f);
+}
+
+static struct pico_eth *pico_ethernet_mcast_translate(struct pico_frame *f, uint8_t *pico_mcast_mac)
+{
+    struct pico_ipv4_hdr *hdr = (struct pico_ipv4_hdr *) f->net_hdr;
+
+    /* place 23 lower bits of IP in lower 23 bits of MAC */
+    pico_mcast_mac[5] = (long_be(hdr->dst.addr) & 0x000000FFu);
+    pico_mcast_mac[4] = (uint8_t)((long_be(hdr->dst.addr) & 0x0000FF00u) >> 8u);
+    pico_mcast_mac[3] = (uint8_t)((long_be(hdr->dst.addr) & 0x007F0000u) >> 16u);
+
+    return (struct pico_eth *)pico_mcast_mac;
+}
+
+
+#ifdef PICO_SUPPORT_IPV6
+static struct pico_eth *pico_ethernet_mcast6_translate(struct pico_frame *f, uint8_t *pico_mcast6_mac)
+{
+    struct pico_ipv6_hdr *hdr = (struct pico_ipv6_hdr *)f->net_hdr;
+
+    /* first 2 octets are 0x33, last four are the last four of dst */
+    pico_mcast6_mac[5] = hdr->dst.addr[PICO_SIZE_IP6 - 1];
+    pico_mcast6_mac[4] = hdr->dst.addr[PICO_SIZE_IP6 - 2];
+    pico_mcast6_mac[3] = hdr->dst.addr[PICO_SIZE_IP6 - 3];
+    pico_mcast6_mac[2] = hdr->dst.addr[PICO_SIZE_IP6 - 4];
+
+    return (struct pico_eth *)pico_mcast6_mac;
+}
+#endif
+
+static int pico_ethernet_ipv6_dst(struct pico_frame *f, struct pico_eth *const dstmac)
+{
+    int retval = -1;
+    if (!dstmac)
+        return -1;
+
+    #ifdef PICO_SUPPORT_IPV6
+    if (destination_is_mcast(f)) {
+        uint8_t pico_mcast6_mac[6] = {
+            0x33, 0x33, 0x00, 0x00, 0x00, 0x00
+        };
+        pico_ethernet_mcast6_translate(f, pico_mcast6_mac);
+        memcpy(dstmac, pico_mcast6_mac, PICO_SIZE_ETH);
+        retval = 0;
+    } else {
+        struct pico_eth *neighbor = pico_ipv6_get_neighbor(f);
+        if (neighbor)
+        {
+            memcpy(dstmac, neighbor, PICO_SIZE_ETH);
+            retval = 0;
+        }
+    }
+
+    #else
+    (void)f;
+    pico_err = PICO_ERR_EPROTONOSUPPORT;
+    #endif
+    return retval;
+}
+
+
+/* Ethernet send, first attempt: try our own address.
+ * Returns 0 if the packet is not for us.
+ * Returns 1 if the packet is cloned to our own receive queue, so the caller can discard the original frame.
+ * */
+static int32_t pico_ethsend_local(struct pico_frame *f, struct pico_eth_hdr *hdr)
+{
+    if (!hdr)
+        return 0;
+
+    /* Check own mac */
+    if(!memcmp(hdr->daddr, hdr->saddr, PICO_SIZE_ETH)) {
+        struct pico_frame *clone = pico_frame_copy(f);
+        dbg("sending out packet destined for our own mac\n");
+        (void)pico_ethernet_receive(clone);
+        return 1;
+    }
+
+    return 0;
+}
+
+/* Ethernet send, second attempt: try bcast.
+ * Returns 0 if the packet is not bcast, so it will be handled somewhere else.
+ * Returns 1 if the packet is handled by the pico_device_broadcast() function, so it can be discarded.
+ * */
+static int32_t pico_ethsend_bcast(struct pico_frame *f)
+{
+    if (IS_LIMITED_BCAST(f)) {
+        (void)pico_device_broadcast(f); /* We can discard broadcast even if it's not sent. */
+        return 1;
+    }
+
+    return 0;
+}
+
+/* Ethernet send, third attempt: try unicast.
+ * If the device driver is busy, we return 0, so the stack won't discard the frame.
+ * In case of success, we can safely return 1.
+ */
+static int32_t pico_ethsend_dispatch(struct pico_frame *f)
+{
+    int ret = f->dev->send(f->dev, f->start, (int) f->len);
+    if (ret <= 0)
+        return 0; /* Failure to deliver! */
+    else {
+        return 1; /* Frame is in flight by now. */
+    }
+}
+
+
+
+
+/* This function looks for the destination mac address
+ * in order to send the frame being processed.
+ */
+
+int32_t MOCKABLE pico_ethernet_send(struct pico_frame *f)
+{
+    struct pico_eth dstmac;
+    uint8_t dstmac_valid = 0;
+    uint16_t proto = PICO_IDETH_IPV4;
+
+#ifdef PICO_SUPPORT_IPV6
+    /* Step 1: If the frame has an IPv6 packet,
+     * destination address is taken from the ND tables
+     */
+    if (IS_IPV6(f)) {
+        if (pico_ethernet_ipv6_dst(f, &dstmac) < 0)
+        {
+            pico_ipv6_nd_postpone(f);
+            return 0; /* I don't care if frame was actually postponed. If there is no room in the ND table, discard safely. */
+        }
+
+        dstmac_valid = 1;
+        proto = PICO_IDETH_IPV6;
+    }
+    else
+#endif
+
+    /* In case of broadcast (IPV4 only), dst mac is FF:FF:... */
+    if (IS_BCAST(f) || destination_is_bcast(f))
+    {
+        memcpy(&dstmac, PICO_ETHADDR_ALL, PICO_SIZE_ETH);
+        dstmac_valid = 1;
+    }
+
+    /* In case of multicast, dst mac is translated from the group address */
+    else if (destination_is_mcast(f)) {
+        uint8_t pico_mcast_mac[6] = {
+            0x01, 0x00, 0x5e, 0x00, 0x00, 0x00
+        };
+        pico_ethernet_mcast_translate(f, pico_mcast_mac);
+        memcpy(&dstmac, pico_mcast_mac, PICO_SIZE_ETH);
+        dstmac_valid = 1;
+    }
+
+#if (defined PICO_SUPPORT_IPV4)
+    else {
+        struct pico_eth *arp_get;
+        arp_get = pico_arp_get(f);
+        if (arp_get) {
+            memcpy(&dstmac, arp_get, PICO_SIZE_ETH);
+            dstmac_valid = 1;
+        } else {
+            /* At this point, ARP will discard the frame in any case.
+             * It is safe to return without discarding.
+             */
+            pico_arp_postpone(f);
+            return 0;
+            /* Same case as for IPv6 ... */
+        }
+
+    }
+#endif
+
+    /* This sets destination and source address, then pushes the packet to the device. */
+    if (dstmac_valid) {
+        struct pico_eth_hdr *hdr;
+        hdr = (struct pico_eth_hdr *) f->datalink_hdr;
+        if ((f->start > f->buffer) && ((f->start - f->buffer) >= PICO_SIZE_ETHHDR))
+        {
+            f->start -= PICO_SIZE_ETHHDR;
+            f->len += PICO_SIZE_ETHHDR;
+            f->datalink_hdr = f->start;
+            hdr = (struct pico_eth_hdr *) f->datalink_hdr;
+            memcpy(hdr->saddr, f->dev->eth->mac.addr, PICO_SIZE_ETH);
+            memcpy(hdr->daddr, &dstmac, PICO_SIZE_ETH);
+            hdr->proto = proto;
+        }
+
+        if (pico_ethsend_local(f, hdr) || pico_ethsend_bcast(f) || pico_ethsend_dispatch(f)) {
+            /* one of the above functions has delivered the frame accordingly. (returned != 0)
+             * It is safe to directly return success.
+             * */
+            return 0;
+        }
+    }
+
+    /* Failure: do not dequeue the frame, keep it for later. */
+    return -1;
+}
+
+#endif /* PICO_SUPPORT_ETH */
+
+
+void pico_store_network_origin(void *src, struct pico_frame *f)
+{
+  #ifdef PICO_SUPPORT_IPV4
+    struct pico_ip4 *ip4;
+  #endif
+
+  #ifdef PICO_SUPPORT_IPV6
+    struct pico_ip6 *ip6;
+  #endif
+
+  #ifdef PICO_SUPPORT_IPV4
+    if (IS_IPV4(f)) {
+        struct pico_ipv4_hdr *hdr;
+        hdr = (struct pico_ipv4_hdr *) f->net_hdr;
+        ip4 = (struct pico_ip4 *) src;
+        ip4->addr = hdr->src.addr;
+    }
+
+  #endif
+  #ifdef PICO_SUPPORT_IPV6
+    if (IS_IPV6(f)) {
+        struct pico_ipv6_hdr *hdr;
+        hdr = (struct pico_ipv6_hdr *) f->net_hdr;
+        ip6 = (struct pico_ip6 *) src;
+        memcpy(ip6->addr, hdr->src.addr, PICO_SIZE_IP6);
+    }
+
+  #endif
+}
+
+int pico_address_compare(union pico_address *a, union pico_address *b, uint16_t proto)
+{
+    #ifdef PICO_SUPPORT_IPV6
+    if (proto == PICO_PROTO_IPV6) {
+        return pico_ipv6_compare(&a->ip6, &b->ip6);
+    }
+
+    #endif
+    #ifdef PICO_SUPPORT_IPV4
+    if (proto == PICO_PROTO_IPV4) {
+        return pico_ipv4_compare(&a->ip4, &b->ip4);
+    }
+
+    #endif
+    return 0;
+
+}
+
+int pico_frame_dst_is_unicast(struct pico_frame *f)
+{
+    if (0) {
+        return 0;
+    }
+
+#ifdef PICO_SUPPORT_IPV4
+    if (IS_IPV4(f)) {
+        struct pico_ipv4_hdr *hdr = (struct pico_ipv4_hdr *)f->net_hdr;
+        if (pico_ipv4_is_multicast(hdr->dst.addr) || pico_ipv4_is_broadcast(hdr->dst.addr))
+            return 0;
+
+        return 1;
+    }
+
+#endif
+
+#ifdef PICO_SUPPORT_IPV6
+    if (IS_IPV6(f)) {
+        struct pico_ipv6_hdr *hdr = (struct pico_ipv6_hdr *)f->net_hdr;
+        if (pico_ipv6_is_multicast(hdr->dst.addr) || pico_ipv6_is_unspecified(hdr->dst.addr))
+            return 0;
+
+        return 1;
+    }
+
+#endif
+    else return 0;
+}
+
+
+/* LOWEST LEVEL: interface towards devices. */
+/* Device driver will call this function which returns immediately.
+ * Incoming packet will be processed later on in the dev loop.
+ */
+int32_t pico_stack_recv(struct pico_device *dev, uint8_t *buffer, uint32_t len)
+{
+    struct pico_frame *f;
+    int32_t ret;
+    if (len <= 0)
+        return -1;
+
+    f = pico_frame_alloc(len);
+    if (!f)
+    {
+        dbg("Cannot alloc incoming frame!\n");
+        return -1;
+    }
+
+    /* Association to the device that just received the frame. */
+    f->dev = dev;
+
+    /* Setup the start pointer, length. */
+    f->start = f->buffer;
+    f->len = f->buffer_len;
+    if (f->len > 8) {
+        uint32_t rand, mid_frame = (f->buffer_len >> 2) << 1;
+        mid_frame -= (mid_frame % 4);
+        memcpy(&rand, f->buffer + mid_frame, sizeof(uint32_t));
+        pico_rand_feed(rand);
+    }
+
+    memcpy(f->buffer, buffer, len);
+    ret = pico_enqueue(dev->q_in, f);
+    if (ret <= 0) {
+        pico_frame_discard(f);
+    }
+
+    return ret;
+}
+
+static int32_t _pico_stack_recv_zerocopy(struct pico_device *dev, uint8_t *buffer, uint32_t len, int ext_buffer, void (*notify_free)(uint8_t *))
+{
+    struct pico_frame *f;
+    int ret;
+    if (len <= 0)
+        return -1;
+
+    f = pico_frame_alloc_skeleton(len, ext_buffer);
+    if (!f)
+    {
+        dbg("Cannot alloc incoming frame!\n");
+        return -1;
+    }
+
+    if (pico_frame_skeleton_set_buffer(f, buffer) < 0)
+    {
+        dbg("Invalid zero-copy buffer!\n");
+        PICO_FREE(f->usage_count);
+        PICO_FREE(f);
+        return -1;
+    }
+
+    if (notify_free) {
+        f->notify_free = notify_free;
+    }
+
+    f->dev = dev;
+    ret = pico_enqueue(dev->q_in, f);
+    if (ret <= 0) {
+        pico_frame_discard(f);
+    }
+
+    return ret;
+}
+
+int32_t pico_stack_recv_zerocopy(struct pico_device *dev, uint8_t *buffer, uint32_t len)
+{
+    return _pico_stack_recv_zerocopy(dev, buffer, len, 0, NULL);
+}
+
+int32_t pico_stack_recv_zerocopy_ext_buffer(struct pico_device *dev, uint8_t *buffer, uint32_t len)
+{
+    return _pico_stack_recv_zerocopy(dev, buffer, len, 1, NULL);
+}
+
+int32_t pico_stack_recv_zerocopy_ext_buffer_notify(struct pico_device *dev, uint8_t *buffer, uint32_t len, void (*notify_free)(uint8_t *buffer))
+{
+    return _pico_stack_recv_zerocopy(dev, buffer, len, 1, notify_free);
+}
+
+int32_t pico_sendto_dev(struct pico_frame *f)
+{
+    if (!f->dev) {
+        pico_frame_discard(f);
+        return -1;
+    } else {
+        if (f->len > 8) {
+            uint32_t rand, mid_frame = (f->buffer_len >> 2) << 1;
+            mid_frame -= (mid_frame % 4);
+            memcpy(&rand, f->buffer + mid_frame, sizeof(uint32_t));
+            pico_rand_feed(rand);
+        }
+
+        return pico_enqueue(f->dev->q_out, f);
+    }
+}
+
+struct pico_timer
+{
+    void *arg;
+    void (*timer)(pico_time timestamp, void *arg);
+};
+
+struct pico_timer_ref
+{
+    pico_time expire;
+    struct pico_timer *tmr;
+};
+
+typedef struct pico_timer_ref pico_timer_ref;
+
+DECLARE_HEAP(pico_timer_ref, expire);
+
+static heap_pico_timer_ref *Timers;
+
+int32_t pico_seq_compare(uint32_t a, uint32_t b)
+{
+    uint32_t thresh = ((uint32_t)(-1)) >> 1;
+
+    if (a > b) /* return positive number, if not wrapped */
+    {
+        if ((a - b) > thresh) /* b wrapped */
+            return -(int32_t)(b - a); /* b = very small,     a = very big      */
+        else
+            return (int32_t)(a - b); /* a = biggest,        b = a bit smaller */
+
+    }
+
+    if (a < b) /* return negative number, if not wrapped */
+    {
+        if ((b - a) > thresh) /* a wrapped */
+            return (int32_t)(a - b); /* a = very small,     b = very big      */
+        else
+            return -(int32_t)(b - a); /* b = biggest,        a = a bit smaller */
+
+    }
+
+    return 0;
+}
+
+static void pico_check_timers(void)
+{
+    struct pico_timer *t;
+    struct pico_timer_ref tref_unused, *tref = heap_first(Timers);
+    pico_tick = PICO_TIME_MS();
+    while((tref) && (tref->expire < pico_tick)) {
+        t = tref->tmr;
+        if (t && t->timer)
+            t->timer(pico_tick, t->arg);
+
+        if (t)
+        {
+            PICO_FREE(t);
+        }
+
+        t = NULL;
+        heap_peek(Timers, &tref_unused);
+        tref = heap_first(Timers);
+    }
+}
+
+void MOCKABLE pico_timer_cancel(struct pico_timer *t)
+{
+    uint32_t i;
+    struct pico_timer_ref *tref = Timers->top;
+    if (!t)
+        return;
+
+    for (i = 1; i <= Timers->n; i++) {
+        if (tref[i].tmr == t) {
+            Timers->top[i].tmr = NULL;
+            PICO_FREE(t);
+            break;
+        }
+    }
+}
+
+#define PROTO_DEF_NR      11
+#define PROTO_DEF_AVG_NR  4
+#define PROTO_DEF_SCORE   32
+#define PROTO_MIN_SCORE   32
+#define PROTO_MAX_SCORE   128
+#define PROTO_LAT_IND     3   /* latency indication 0-3 (lower is better latency performance), x1, x2, x4, x8 */
+#define PROTO_MAX_LOOP    (PROTO_MAX_SCORE << PROTO_LAT_IND) /* max global loop score, so per tick */
+
+static int calc_score(int *score, int *index, int avg[][PROTO_DEF_AVG_NR], int *ret)
+{
+    int temp, i, j, sum;
+    int max_total = PROTO_MAX_LOOP, total = 0;
+
+    /* dbg("USED SCORES> "); */
+
+    for (i = 0; i < PROTO_DEF_NR; i++) {
+
+        /* if used looped score */
+        if (ret[i] < score[i]) {
+            temp = score[i] - ret[i]; /* remaining loop score */
+
+            /* dbg("%3d - ",temp); */
+
+            if (index[i] >= PROTO_DEF_AVG_NR)
+                index[i] = 0;   /* reset index */
+
+            j = index[i];
+            avg[i][j] = temp;
+
+            index[i]++;
+
+            if (ret[i] == 0 && ((score[i] * 2) <= PROTO_MAX_SCORE) && ((total + (score[i] * 2)) < max_total)) { /* used all loop score -> increase next score directly */
+                score[i] *= 2;
+                total += score[i];
+                continue;
+            }
+
+            sum = 0;
+            for (j = 0; j < PROTO_DEF_AVG_NR; j++)
+                sum += avg[i][j]; /* calculate sum */
+
+            sum /= 4;           /* divide by 4 to get average used score */
+
+            /* criterion to increase next loop score */
+            if (sum > (score[i] - (score[i] / 4))  && ((score[i] * 2) <= PROTO_MAX_SCORE) && ((total + (score[i] / 2)) < max_total)) { /* > 3/4 */
+                score[i] *= 2; /* double loop score */
+                total += score[i];
+                continue;
+            }
+
+            /* criterion to decrease next loop score */
+            if ((sum < (score[i] / 4)) && ((score[i] / 2) >= PROTO_MIN_SCORE)) { /* < 1/4 */
+                score[i] /= 2; /* half loop score */
+                total += score[i];
+                continue;
+            }
+
+            /* also add non-changed scores */
+            total += score[i];
+        }
+        else if (ret[i] == score[i]) {
+            /* no used loop score - gradually decrease */
+
+            /*  dbg("%3d - ",0); */
+
+            if (index[i] >= PROTO_DEF_AVG_NR)
+                index[i] = 0;   /* reset index */
+
+            j = index[i];
+            avg[i][j] = 0;
+
+            index[i]++;
+
+            sum = 0;
+            for (j = 0; j < PROTO_DEF_AVG_NR; j++)
+                sum += avg[i][j]; /* calculate sum */
+
+            sum /= 2;          /* divide by 4 to get average used score */
+
+            if ((sum == 0) && ((score[i] / 2) >= PROTO_MIN_SCORE)) {
+                score[i] /= 2; /* half loop score */
+                total += score[i];
+                for (j = 0; j < PROTO_DEF_AVG_NR; j++)
+                    avg[i][j] = score[i];
+            }
+
+        }
+    }
+    /* dbg("\n"); */
+
+    return 0;
+}
+
+void pico_stack_tick(void)
+{
+    static int score[PROTO_DEF_NR] = {
+        PROTO_DEF_SCORE, PROTO_DEF_SCORE, PROTO_DEF_SCORE, PROTO_DEF_SCORE, PROTO_DEF_SCORE, PROTO_DEF_SCORE, PROTO_DEF_SCORE, PROTO_DEF_SCORE, PROTO_DEF_SCORE, PROTO_DEF_SCORE, PROTO_DEF_SCORE
+    };
+    static int index[PROTO_DEF_NR] = {
+        0, 0, 0, 0, 0, 0
+    };
+    static int avg[PROTO_DEF_NR][PROTO_DEF_AVG_NR];
+    static int ret[PROTO_DEF_NR] = {
+        0
+    };
+
+    pico_check_timers();
+
+    /* dbg("LOOP_SCORES> %3d - %3d - %3d - %3d - %3d - %3d - %3d - %3d - %3d - %3d - %3d\n",score[0],score[1],score[2],score[3],score[4],score[5],score[6],score[7],score[8],score[9],score[10]); */
+
+    /* score = pico_protocols_loop(100); */
+
+    ret[0] = pico_devices_loop(score[0], PICO_LOOP_DIR_IN);
+    pico_rand_feed((uint32_t)ret[0]);
+
+    ret[1] = pico_protocol_datalink_loop(score[1], PICO_LOOP_DIR_IN);
+    pico_rand_feed((uint32_t)ret[1]);
+
+    ret[2] = pico_protocol_network_loop(score[2], PICO_LOOP_DIR_IN);
+    pico_rand_feed((uint32_t)ret[2]);
+
+    ret[3] = pico_protocol_transport_loop(score[3], PICO_LOOP_DIR_IN);
+    pico_rand_feed((uint32_t)ret[3]);
+
+
+    ret[5] = score[5];
+#if defined (PICO_SUPPORT_IPV4) || defined (PICO_SUPPORT_IPV6)
+#if defined (PICO_SUPPORT_TCP) || defined (PICO_SUPPORT_UDP)
+    ret[5] = pico_sockets_loop(score[5]); /* swapped */
+    pico_rand_feed((uint32_t)ret[5]);
+#endif
+#endif
+
+    ret[4] = pico_protocol_socket_loop(score[4], PICO_LOOP_DIR_IN);
+    pico_rand_feed((uint32_t)ret[4]);
+
+
+    ret[6] = pico_protocol_socket_loop(score[6], PICO_LOOP_DIR_OUT);
+    pico_rand_feed((uint32_t)ret[6]);
+
+    ret[7] = pico_protocol_transport_loop(score[7], PICO_LOOP_DIR_OUT);
+    pico_rand_feed((uint32_t)ret[7]);
+
+    ret[8] = pico_protocol_network_loop(score[8], PICO_LOOP_DIR_OUT);
+    pico_rand_feed((uint32_t)ret[8]);
+
+    ret[9] = pico_protocol_datalink_loop(score[9], PICO_LOOP_DIR_OUT);
+    pico_rand_feed((uint32_t)ret[9]);
+
+    ret[10] = pico_devices_loop(score[10], PICO_LOOP_DIR_OUT);
+    pico_rand_feed((uint32_t)ret[10]);
+
+    /* calculate new loop scores for next iteration */
+    calc_score(score, index, (int (*)[])avg, ret);
+}
+
+void pico_stack_loop(void)
+{
+    while(1) {
+        pico_stack_tick();
+        PICO_IDLE();
+    }
+}
+
+MOCKABLE struct pico_timer *pico_timer_add(pico_time expire, void (*timer)(pico_time, void *), void *arg)
+{
+    struct pico_timer *t = PICO_ZALLOC(sizeof(struct pico_timer));
+    struct pico_timer_ref tref;
+    if (!t) {
+        pico_err = PICO_ERR_ENOMEM;
+        return NULL;
+    }
+
+    tref.expire = PICO_TIME_MS() + expire;
+    t->arg = arg;
+    t->timer = timer;
+    tref.tmr = t;
+    heap_insert(Timers, &tref);
+    if (Timers->n > PICO_MAX_TIMERS) {
+        dbg("Warning: I have %d timers\n", (int)Timers->n);
+    }
+
+    return t;
+}
+
+int pico_stack_init(void)
+{
+
+#ifdef PICO_SUPPORT_IPV4
+    pico_protocol_init(&pico_proto_ipv4);
+#endif
+
+#ifdef PICO_SUPPORT_IPV6
+    pico_protocol_init(&pico_proto_ipv6);
+#endif
+
+#ifdef PICO_SUPPORT_ICMP4
+    pico_protocol_init(&pico_proto_icmp4);
+#endif
+
+#ifdef PICO_SUPPORT_ICMP6
+    pico_protocol_init(&pico_proto_icmp6);
+#endif
+
+#ifdef PICO_SUPPORT_IGMP
+    pico_protocol_init(&pico_proto_igmp);
+#endif
+
+#ifdef PICO_SUPPORT_UDP
+    pico_protocol_init(&pico_proto_udp);
+#endif
+
+#ifdef PICO_SUPPORT_TCP
+    pico_protocol_init(&pico_proto_tcp);
+#endif
+
+#ifdef PICO_SUPPORT_DNS_CLIENT
+    pico_dns_client_init();
+#endif
+
+    pico_rand_feed(123456);
+
+    /* Initialize timer heap */
+    Timers = heap_init();
+    if (!Timers)
+        return -1;
+
+#if ((defined PICO_SUPPORT_IPV4) && (defined PICO_SUPPORT_ETH))
+    /* Initialize ARP module */
+    pico_arp_init();
+#endif
+
+#ifdef PICO_SUPPORT_IPV6
+    /* Initialize Neighbor discovery module */
+    pico_ipv6_nd_init();
+#endif
+
+#ifdef PICO_SUPPORT_OLSR
+    pico_olsr_init();
+#endif
+#ifdef PICO_SUPPORT_AODV
+    pico_aodv_init();
+#endif
+
+    pico_stack_tick();
+    pico_stack_tick();
+    pico_stack_tick();
+    return 0;
+}
+
diff --git a/net/picotcp/stack/pico_tree.c b/net/picotcp/stack/pico_tree.c
new file mode 100644
index 0000000..76eaf2f
--- /dev/null
+++ b/net/picotcp/stack/pico_tree.c
@@ -0,0 +1,575 @@
+/*********************************************************************
+   PicoTCP. Copyright (c) 2012-2015 Altran Intelligent Systems. Some rights reserved.
+   See LICENSE and COPYING for usage.
+
+   Author: Andrei Carp <andrei.carp@tass.be>
+ *********************************************************************/
+
+#include "pico_tree.h"
+#include "pico_config.h"
+#include "pico_protocol.h"
+#include "pico_mm.h"
+
+#define RED     0
+#define BLACK 1
+
+/* By default the null leafs are black */
+struct pico_tree_node LEAF = {
+    NULL, /* key */
+    &LEAF, &LEAF, &LEAF, /* parent, left,right */
+    BLACK, /* color */
+};
+
+#define IS_LEAF(x) (x == &LEAF)
+#define IS_NOT_LEAF(x) (x != &LEAF)
+#define INIT_LEAF (&LEAF)
+
+#define AM_I_LEFT_CHILD(x) (x == x->parent->leftChild)
+#define AM_I_RIGHT_CHILD(x) (x == x->parent->rightChild)
+
+#define PARENT(x) (x->parent)
+#define GRANPA(x) (x->parent->parent)
+
+/*
+ * Local Functions
+ */
+static struct pico_tree_node *create_node(struct pico_tree *tree, void *key, uint8_t allocator);
+static void rotateToLeft(struct pico_tree*tree, struct pico_tree_node*node);
+static void rotateToRight(struct pico_tree*root, struct pico_tree_node*node);
+static void fix_insert_collisions(struct pico_tree*tree, struct pico_tree_node*node);
+static void fix_delete_collisions(struct pico_tree*tree, struct pico_tree_node *node);
+static void switchNodes(struct pico_tree*tree, struct pico_tree_node*nodeA, struct pico_tree_node*nodeB);
+void *pico_tree_insert_implementation(struct pico_tree *tree, void *key, uint8_t allocator);
+void *pico_tree_delete_implementation(struct pico_tree *tree, void *key, uint8_t allocator);
+
+#ifdef PICO_SUPPORT_MM
+/* The memory manager also uses the pico_tree to keep track of all the different slab sizes it has.
+ * These nodes should be placed in the manager page which is in a different memory region then the nodes
+ * which are used for the pico stack in general.
+ * Therefore the following 2 functions are created so that pico_tree can use them to to put these nodes
+ * into the correct memory regions.
+ * If pico_tree_insert is called from the memory manager module, then create_node should use
+ * pico_mem_page0_zalloc to create a node. The same for pico_tree_delete.
+ */
+extern void*pico_mem_page0_zalloc(size_t len);
+extern void pico_mem_page0_free(void*ptr);
+#endif  /* PICO_SUPPORT_MM */
+
+/*
+ * Exported functions
+ */
+
+struct pico_tree_node *pico_tree_firstNode(struct pico_tree_node *node)
+{
+    while(IS_NOT_LEAF(node->leftChild))
+        node = node->leftChild;
+    return node;
+}
+
+struct pico_tree_node *pico_tree_lastNode(struct pico_tree_node *node)
+{
+    while(IS_NOT_LEAF(node->rightChild))
+        node = node->rightChild;
+    return node;
+}
+
+struct pico_tree_node *pico_tree_next(struct pico_tree_node *node)
+{
+    if(IS_NOT_LEAF(node->rightChild))
+    {
+        node = node->rightChild;
+        while(IS_NOT_LEAF(node->leftChild))
+            node = node->leftChild;
+    }
+    else
+    {
+        if (IS_NOT_LEAF(node->parent) &&  AM_I_LEFT_CHILD(node))
+            node = node->parent;
+        else {
+            while (IS_NOT_LEAF(node->parent) && AM_I_RIGHT_CHILD(node))
+                node = node->parent;
+            node = node->parent;
+        }
+    }
+
+    return node;
+}
+
+struct pico_tree_node *pico_tree_prev(struct pico_tree_node *node)
+{
+    if (IS_NOT_LEAF(node->leftChild)) {
+        node = node->leftChild;
+        while (IS_NOT_LEAF(node->rightChild))
+            node = node->rightChild;
+    } else {
+        if (IS_NOT_LEAF(node->parent) && AM_I_RIGHT_CHILD(node))
+            node = node->parent;
+        else {
+            while (IS_NOT_LEAF(node) && AM_I_LEFT_CHILD(node))
+                node = node->parent;
+            node = node->parent;
+        }
+    }
+
+    return node;
+}
+
+/* The memory manager also uses the pico_tree to keep track of all the different slab sizes it has.
+ * These nodes should be placed in the manager page which is in a different memory region then the nodes
+ * which are used for the pico stack in general.
+ * Therefore the following wrapper for pico_tree_insert is created.
+ * The actual implementation can be found in pico_tree_insert_implementation.
+ */
+void *pico_tree_insert(struct pico_tree *tree, void *key)
+{
+    return pico_tree_insert_implementation(tree, key, USE_PICO_ZALLOC);
+}
+
+void *pico_tree_insert_implementation(struct pico_tree*tree, void *key, uint8_t allocator)
+{
+    struct pico_tree_node *last_node = INIT_LEAF;
+    struct pico_tree_node *temp = tree->root;
+    struct pico_tree_node *insert;
+    void *LocalKey;
+    int result = 0;
+
+    LocalKey = (IS_NOT_LEAF(tree->root) ? pico_tree_findKey(tree, key) : NULL);
+    /* if node already in, bail out */
+    if(LocalKey)
+        return LocalKey;
+    else
+    {
+        if(allocator == USE_PICO_PAGE0_ZALLOC)
+            insert = create_node(tree, key, USE_PICO_PAGE0_ZALLOC);
+        else
+            insert = create_node(tree, key, USE_PICO_ZALLOC);
+
+        if(!insert)
+        {
+            pico_err = PICO_ERR_ENOMEM;
+            /* to let the user know that it couldn't insert */
+            return (void *)&LEAF;
+        }
+    }
+
+    /* search for the place to insert the new node */
+    while(IS_NOT_LEAF(temp))
+    {
+        last_node = temp;
+        result = tree->compare(insert->keyValue, temp->keyValue);
+
+        temp = (result < 0) ? (temp->leftChild) : (temp->rightChild);
+    }
+    /* make the needed connections */
+    insert->parent = last_node;
+
+    if(IS_LEAF(last_node))
+        tree->root = insert;
+    else{
+        result = tree->compare(insert->keyValue, last_node->keyValue);
+        if(result < 0)
+            last_node->leftChild = insert;
+        else
+            last_node->rightChild = insert;
+    }
+
+    /* fix colour issues */
+    fix_insert_collisions(tree, insert);
+
+    return NULL;
+}
+
+struct pico_tree_node *pico_tree_findNode(struct pico_tree *tree, void *key)
+{
+    struct pico_tree_node *found;
+
+    found = tree->root;
+
+    while(IS_NOT_LEAF(found))
+    {
+        int result;
+        result = tree->compare(found->keyValue, key);
+        if(result == 0)
+        {
+            return found;
+        }
+        else if(result < 0)
+            found = found->rightChild;
+        else
+            found = found->leftChild;
+    }
+    return NULL;
+}
+
+void *pico_tree_findKey(struct pico_tree *tree, void *key)
+{
+    struct pico_tree_node *found;
+
+
+    found = tree->root;
+
+    while(IS_NOT_LEAF(found))
+    {
+        int result;
+
+        result = tree->compare(found->keyValue, key);
+        if(result == 0)
+            return found->keyValue;
+        else if(result < 0)
+            found = found->rightChild;
+        else
+            found = found->leftChild;
+
+    }
+    return NULL;
+}
+
+void *pico_tree_first(struct pico_tree *tree)
+{
+    return pico_tree_firstNode(tree->root)->keyValue;
+}
+
+void *pico_tree_last(struct pico_tree *tree)
+{
+    return pico_tree_lastNode(tree->root)->keyValue;
+}
+
+static uint8_t pico_tree_delete_node(struct pico_tree *tree, struct pico_tree_node *d, struct pico_tree_node **temp)
+{
+    struct pico_tree_node *min;
+    struct pico_tree_node *ltemp = d;
+    uint8_t nodeColor;
+    min = pico_tree_firstNode(d->rightChild);
+    nodeColor = min->color;
+
+    *temp = min->rightChild;
+    if(min->parent == ltemp && IS_NOT_LEAF(*temp))
+        (*temp)->parent = min;
+    else{
+        switchNodes(tree, min, min->rightChild);
+        min->rightChild = ltemp->rightChild;
+        if(IS_NOT_LEAF(min->rightChild)) min->rightChild->parent = min;
+    }
+
+    switchNodes(tree, ltemp, min);
+    min->leftChild = ltemp->leftChild;
+
+    if(IS_NOT_LEAF(min->leftChild))
+        min->leftChild->parent = min;
+
+    min->color = ltemp->color;
+    return nodeColor;
+}
+
+static uint8_t pico_tree_delete_check_switch(struct pico_tree *tree, struct pico_tree_node *delete, struct pico_tree_node **temp)
+{
+    struct pico_tree_node *ltemp = delete;
+    uint8_t nodeColor = delete->color;
+    if(IS_LEAF(delete->leftChild))
+    {
+        *temp = ltemp->rightChild;
+        switchNodes(tree, ltemp, ltemp->rightChild);
+    }
+    else
+    if(IS_LEAF(delete->rightChild))
+    {
+        struct pico_tree_node *_ltemp = delete;
+        *temp = _ltemp->leftChild;
+        switchNodes(tree, _ltemp, _ltemp->leftChild);
+    }
+    else{
+        nodeColor = pico_tree_delete_node(tree, delete, temp);
+    }
+
+    return nodeColor;
+
+}
+
+/* The memory manager also uses the pico_tree to keep track of all the different slab sizes it has.
+ * These nodes should be placed in the manager page which is in a different memory region then the nodes
+ * which are used for the pico stack in general.
+ * Therefore the following wrapper for pico_tree_delete is created.
+ * The actual implementation can be found in pico_tree_delete_implementation.
+ */
+void *pico_tree_delete(struct pico_tree *tree, void *key)
+{
+    return pico_tree_delete_implementation(tree, key, USE_PICO_ZALLOC);
+}
+
+static inline void if_nodecolor_black_fix_collisions(struct pico_tree *tree, struct pico_tree_node *temp, uint8_t nodeColor)
+{
+    /* deleted node is black, this will mess up the black path property */
+    if(nodeColor == BLACK)
+        fix_delete_collisions(tree, temp);
+
+}
+
+void *pico_tree_delete_implementation(struct pico_tree *tree, void *key, uint8_t allocator)
+{
+    struct pico_tree_node *temp;
+    uint8_t nodeColor; /* keeps the color of the node to be deleted */
+    void *lkey; /* keeps a copy of the key which will be removed */
+    struct pico_tree_node *delete;  /* keeps a copy of the node to be extracted */
+
+    if (!key)
+        return NULL;
+
+    delete = pico_tree_findNode(tree, key);
+
+    /* this key isn't in the tree, bail out */
+    if(!delete)
+        return NULL;
+
+    lkey = delete->keyValue;
+    nodeColor = pico_tree_delete_check_switch(tree, delete, &temp);
+
+    if_nodecolor_black_fix_collisions(tree, temp, nodeColor);
+
+    if(allocator == USE_PICO_ZALLOC)
+        PICO_FREE(delete);
+
+#ifdef PICO_SUPPORT_MM
+    else
+        pico_mem_page0_free(delete);
+#endif
+    return lkey;
+}
+
+int pico_tree_empty(struct pico_tree *tree)
+{
+    return (!tree->root || IS_LEAF(tree->root));
+}
+
+/*
+ * Private functions
+ */
+static void rotateToLeft(struct pico_tree*tree, struct pico_tree_node*node)
+{
+    struct pico_tree_node*temp;
+
+    temp = node->rightChild;
+
+    if(temp == &LEAF) return;
+
+    node->rightChild = temp->leftChild;
+
+    if(IS_NOT_LEAF(temp->leftChild))
+        temp->leftChild->parent = node;
+
+    temp->parent = node->parent;
+
+    if(IS_LEAF(node->parent))
+        tree->root = temp;
+    else
+    if(node == node->parent->leftChild)
+        node->parent->leftChild = temp;
+    else
+        node->parent->rightChild = temp;
+
+    temp->leftChild = node;
+    node->parent = temp;
+}
+
+
+static void rotateToRight(struct pico_tree *tree, struct pico_tree_node *node)
+{
+    struct pico_tree_node*temp;
+
+    temp = node->leftChild;
+    node->leftChild = temp->rightChild;
+
+    if(temp == &LEAF) return;
+
+    if(IS_NOT_LEAF(temp->rightChild))
+        temp->rightChild->parent = node;
+
+    temp->parent = node->parent;
+
+    if(IS_LEAF(node->parent))
+        tree->root = temp;
+    else
+    if(node == node->parent->rightChild)
+        node->parent->rightChild = temp;
+    else
+        node->parent->leftChild = temp;
+
+    temp->rightChild = node;
+    node->parent = temp;
+    return;
+}
+
+static struct pico_tree_node *create_node(struct pico_tree *tree, void*key, uint8_t allocator)
+{
+    struct pico_tree_node *temp = NULL;
+    IGNORE_PARAMETER(tree);
+    if(allocator == USE_PICO_ZALLOC)
+        temp = (struct pico_tree_node *)PICO_ZALLOC(sizeof(struct pico_tree_node));
+
+#ifdef PICO_SUPPORT_MM
+    else
+        temp = (struct pico_tree_node *)pico_mem_page0_zalloc(sizeof(struct pico_tree_node));
+#endif
+
+    if(!temp)
+        return NULL;
+
+    temp->keyValue = key;
+    temp->parent = &LEAF;
+    temp->leftChild = &LEAF;
+    temp->rightChild = &LEAF;
+    /* by default every new node is red */
+    temp->color = RED;
+    return temp;
+}
+
+/*
+ * This function fixes the possible collisions in the tree.
+ * Eg. if a node is red his children must be black !
+ */
+static void fix_insert_collisions(struct pico_tree*tree, struct pico_tree_node*node)
+{
+    struct pico_tree_node*temp;
+
+    while(node->parent->color == RED && IS_NOT_LEAF(GRANPA(node)))
+    {
+        if(AM_I_RIGHT_CHILD(node->parent))
+        {
+            temp = GRANPA(node)->leftChild;
+            if(temp->color == RED) {
+                node->parent->color = BLACK;
+                temp->color = BLACK;
+                GRANPA(node)->color = RED;
+                node = GRANPA(node);
+            }
+            else if(temp->color == BLACK) {
+                if(node == node->parent->leftChild) {
+                    node = node->parent;
+                    rotateToRight(tree, node);
+                }
+
+                node->parent->color = BLACK;
+                GRANPA(node)->color = RED;
+                rotateToLeft(tree, GRANPA(node));
+            }
+        }
+        else if(AM_I_LEFT_CHILD(node->parent))
+        {
+            temp = GRANPA(node)->rightChild;
+            if(temp->color == RED) {
+                node->parent->color = BLACK;
+                temp->color = BLACK;
+                GRANPA(node)->color = RED;
+                node = GRANPA(node);
+            }
+            else if(temp->color == BLACK) {
+                if(AM_I_RIGHT_CHILD(node)) {
+                    node = node->parent;
+                    rotateToLeft(tree, node);
+                }
+
+                node->parent->color = BLACK;
+                GRANPA(node)->color = RED;
+                rotateToRight(tree, GRANPA(node));
+            }
+        }
+    }
+    /* make sure that the root of the tree stays black */
+    tree->root->color = BLACK;
+}
+
+static void switchNodes(struct pico_tree*tree, struct pico_tree_node*nodeA, struct pico_tree_node*nodeB)
+{
+
+    if(IS_LEAF(nodeA->parent))
+        tree->root = nodeB;
+    else
+    if(IS_NOT_LEAF(nodeA))
+    {
+        if(AM_I_LEFT_CHILD(nodeA))
+            nodeA->parent->leftChild = nodeB;
+        else
+            nodeA->parent->rightChild = nodeB;
+    }
+
+    if(IS_NOT_LEAF(nodeB)) nodeB->parent = nodeA->parent;
+
+}
+
+/*
+ * This function fixes the possible collisions in the tree.
+ * Eg. if a node is red his children must be black !
+ * In this case the function fixes the constant black path property.
+ */
+static void fix_delete_collisions(struct pico_tree*tree, struct pico_tree_node *node)
+{
+    struct pico_tree_node*temp;
+
+    while( node != tree->root && node->color == BLACK && IS_NOT_LEAF(node))
+    {
+        if(AM_I_LEFT_CHILD(node)) {
+
+            temp = node->parent->rightChild;
+            if(temp->color == RED)
+            {
+                temp->color = BLACK;
+                node->parent->color = RED;
+                rotateToLeft(tree, node->parent);
+                temp = node->parent->rightChild;
+            }
+
+            if(temp->leftChild->color == BLACK && temp->rightChild->color == BLACK)
+            {
+                temp->color = RED;
+                node = node->parent;
+            }
+            else
+            {
+                if(temp->rightChild->color == BLACK)
+                {
+                    temp->leftChild->color = BLACK;
+                    temp->color = RED;
+                    rotateToRight(tree, temp);
+                    temp = temp->parent->rightChild;
+                }
+
+                temp->color = node->parent->color;
+                node->parent->color = BLACK;
+                temp->rightChild->color = BLACK;
+                rotateToLeft(tree, node->parent);
+                node = tree->root;
+            }
+        }
+        else{
+            temp = node->parent->leftChild;
+            if(temp->color == RED)
+            {
+                temp->color = BLACK;
+                node->parent->color = RED;
+                rotateToRight(tree, node->parent);
+                temp = node->parent->leftChild;
+            }
+
+            if(temp->rightChild->color == BLACK && temp->leftChild->color == BLACK)
+            {
+                temp->color = RED;
+                node = node->parent;
+            }
+            else{
+                if(temp->leftChild->color == BLACK)
+                {
+                    temp->rightChild->color = BLACK;
+                    temp->color = RED;
+                    rotateToLeft(tree, temp);
+                    temp = temp->parent->leftChild;
+                }
+
+                temp->color = node->parent->color;
+                node->parent->color = BLACK;
+                temp->leftChild->color = BLACK;
+                rotateToRight(tree, node->parent);
+                node = tree->root;
+            }
+        }
+    }
+    node->color = BLACK;
+}
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
