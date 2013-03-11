Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp49.i.mail.ru ([94.100.177.109])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UF5Jh-00009J-D6
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 16:11:24 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Mon, 11 Mar 2013 20:10:50 +0400
Message-Id: <1363018250-6169-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1363018250-6169-1-git-send-email-shc_work@mail.ru>
References: <1363018250-6169-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/2] Remove unused config.h
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/archosg9/config.h                |  1 -
 arch/arm/boards/beagle/config.h                  | 17 -----------------
 arch/arm/boards/beaglebone/config.h              | 17 -----------------
 arch/arm/boards/ccxmx51/config.h                 | 24 ------------------------
 arch/arm/boards/chumby_falconwing/config.h       | 17 -----------------
 arch/arm/boards/clep7212/config.h                |  4 ----
 arch/arm/boards/crystalfontz-cfa10036/config.h   | 16 ----------------
 arch/arm/boards/edb93xx/config.h                 |  4 ----
 arch/arm/boards/efika-mx-smartbook/config.h      | 17 -----------------
 arch/arm/boards/eukrea_cpuimx27/config.h         | 22 ----------------------
 arch/arm/boards/eukrea_cpuimx51/config.h         | 20 --------------------
 arch/arm/boards/freescale-mx23-evk/config.h      | 12 ------------
 arch/arm/boards/freescale-mx28-evk/config.h      | 16 ----------------
 arch/arm/boards/freescale-mx51-pdk/config.h      | 20 --------------------
 arch/arm/boards/freescale-mx53-loco/config.h     | 20 --------------------
 arch/arm/boards/freescale-mx53-smd/config.h      | 20 --------------------
 arch/arm/boards/freescale-mx6-arm2/config.h      |  4 ----
 arch/arm/boards/freescale-mx6-sabrelite/config.h |  4 ----
 arch/arm/boards/freescale-mx6-sabresd/config.h   |  4 ----
 arch/arm/boards/guf-neso/config.h                | 22 ----------------------
 arch/arm/boards/guf-vincell/config.h             | 24 ------------------------
 arch/arm/boards/highbank/config.h                |  5 -----
 arch/arm/boards/imx21ads/config.h                | 22 ----------------------
 arch/arm/boards/imx233-olinuxino/config.h        | 21 ---------------------
 arch/arm/boards/imx27ads/config.h                | 22 ----------------------
 arch/arm/boards/karo-tx28/config.h               | 16 ----------------
 arch/arm/boards/karo-tx51/config.h               | 17 -----------------
 arch/arm/boards/karo-tx53/config.h               | 24 ------------------------
 arch/arm/boards/mioa701/config.h                 | 22 ----------------------
 arch/arm/boards/netx/config.h                    |  4 ----
 arch/arm/boards/nhk8815/config.h                 |  1 -
 arch/arm/boards/omap343xdsp/config.h             | 17 -----------------
 arch/arm/boards/omap3evm/config.h                | 17 -----------------
 arch/arm/boards/panda/config.h                   |  1 -
 arch/arm/boards/pcm038/config.h                  | 22 ----------------------
 arch/arm/boards/pcm049/config.h                  |  1 -
 arch/arm/boards/pcm051/config.h                  | 21 ---------------------
 arch/arm/boards/phycard-a-l1/config.h            | 18 ------------------
 arch/arm/boards/phycard-a-xl2/config.h           |  1 -
 arch/arm/boards/phycard-i.MX27/config.h          | 22 ----------------------
 arch/arm/boards/raspberry-pi/config.h            |  4 ----
 arch/arm/boards/toshiba-ac100/config.h           |  5 -----
 arch/arm/boards/tqma53/config.h                  |  4 ----
 arch/arm/boards/versatile/config.h               |  5 -----
 arch/arm/boards/vexpress/config.h                |  5 -----
 arch/mips/boards/dlink-dir-320/config.h          | 15 ---------------
 arch/mips/boards/qemu-malta/config.h             | 15 ---------------
 arch/mips/boards/rzx50/config.h                  | 15 ---------------
 arch/sandbox/board/config.h                      |  4 ----
 arch/x86/boards/x86_generic/config.h             | 17 -----------------
 50 files changed, 668 deletions(-)
 delete mode 100644 arch/arm/boards/archosg9/config.h
 delete mode 100644 arch/arm/boards/beagle/config.h
 delete mode 100644 arch/arm/boards/beaglebone/config.h
 delete mode 100644 arch/arm/boards/ccxmx51/config.h
 delete mode 100644 arch/arm/boards/chumby_falconwing/config.h
 delete mode 100644 arch/arm/boards/clep7212/config.h
 delete mode 100644 arch/arm/boards/crystalfontz-cfa10036/config.h
 delete mode 100644 arch/arm/boards/edb93xx/config.h
 delete mode 100644 arch/arm/boards/efika-mx-smartbook/config.h
 delete mode 100644 arch/arm/boards/eukrea_cpuimx27/config.h
 delete mode 100644 arch/arm/boards/eukrea_cpuimx51/config.h
 delete mode 100644 arch/arm/boards/freescale-mx23-evk/config.h
 delete mode 100644 arch/arm/boards/freescale-mx28-evk/config.h
 delete mode 100644 arch/arm/boards/freescale-mx51-pdk/config.h
 delete mode 100644 arch/arm/boards/freescale-mx53-loco/config.h
 delete mode 100644 arch/arm/boards/freescale-mx53-smd/config.h
 delete mode 100644 arch/arm/boards/freescale-mx6-arm2/config.h
 delete mode 100644 arch/arm/boards/freescale-mx6-sabrelite/config.h
 delete mode 100644 arch/arm/boards/freescale-mx6-sabresd/config.h
 delete mode 100644 arch/arm/boards/guf-neso/config.h
 delete mode 100644 arch/arm/boards/guf-vincell/config.h
 delete mode 100644 arch/arm/boards/highbank/config.h
 delete mode 100644 arch/arm/boards/imx21ads/config.h
 delete mode 100644 arch/arm/boards/imx233-olinuxino/config.h
 delete mode 100644 arch/arm/boards/imx27ads/config.h
 delete mode 100644 arch/arm/boards/karo-tx28/config.h
 delete mode 100644 arch/arm/boards/karo-tx51/config.h
 delete mode 100644 arch/arm/boards/karo-tx53/config.h
 delete mode 100644 arch/arm/boards/mioa701/config.h
 delete mode 100644 arch/arm/boards/netx/config.h
 delete mode 100644 arch/arm/boards/nhk8815/config.h
 delete mode 100644 arch/arm/boards/omap343xdsp/config.h
 delete mode 100644 arch/arm/boards/omap3evm/config.h
 delete mode 100644 arch/arm/boards/panda/config.h
 delete mode 100644 arch/arm/boards/pcm038/config.h
 delete mode 100644 arch/arm/boards/pcm049/config.h
 delete mode 100644 arch/arm/boards/pcm051/config.h
 delete mode 100644 arch/arm/boards/phycard-a-l1/config.h
 delete mode 100644 arch/arm/boards/phycard-a-xl2/config.h
 delete mode 100644 arch/arm/boards/phycard-i.MX27/config.h
 delete mode 100644 arch/arm/boards/raspberry-pi/config.h
 delete mode 100644 arch/arm/boards/toshiba-ac100/config.h
 delete mode 100644 arch/arm/boards/tqma53/config.h
 delete mode 100644 arch/arm/boards/versatile/config.h
 delete mode 100644 arch/arm/boards/vexpress/config.h
 delete mode 100644 arch/mips/boards/dlink-dir-320/config.h
 delete mode 100644 arch/mips/boards/qemu-malta/config.h
 delete mode 100644 arch/mips/boards/rzx50/config.h
 delete mode 100644 arch/sandbox/board/config.h
 delete mode 100644 arch/x86/boards/x86_generic/config.h

diff --git a/arch/arm/boards/archosg9/config.h b/arch/arm/boards/archosg9/config.h
deleted file mode 100644
index da84fa5..0000000
--- a/arch/arm/boards/archosg9/config.h
+++ /dev/null
@@ -1 +0,0 @@
-/* nothing */
diff --git a/arch/arm/boards/beagle/config.h b/arch/arm/boards/beagle/config.h
deleted file mode 100644
index 143adf2..0000000
--- a/arch/arm/boards/beagle/config.h
+++ /dev/null
@@ -1,17 +0,0 @@
-/**
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- */
-
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/beaglebone/config.h b/arch/arm/boards/beaglebone/config.h
deleted file mode 100644
index 252aa79..0000000
--- a/arch/arm/boards/beaglebone/config.h
+++ /dev/null
@@ -1,17 +0,0 @@
-/*
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#ifndef _CONFIG_H_
-# define _CONFIG_H_
-
-#endif /* _CONFIG_H_ */
diff --git a/arch/arm/boards/ccxmx51/config.h b/arch/arm/boards/ccxmx51/config.h
deleted file mode 100644
index fdf2f81..0000000
--- a/arch/arm/boards/ccxmx51/config.h
+++ /dev/null
@@ -1,24 +0,0 @@
-/**
- * @file
- * @brief Global defintions for the ARM i.MX51 based ccmx51 board
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/chumby_falconwing/config.h b/arch/arm/boards/chumby_falconwing/config.h
deleted file mode 100644
index 252aa79..0000000
--- a/arch/arm/boards/chumby_falconwing/config.h
+++ /dev/null
@@ -1,17 +0,0 @@
-/*
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#ifndef _CONFIG_H_
-# define _CONFIG_H_
-
-#endif /* _CONFIG_H_ */
diff --git a/arch/arm/boards/clep7212/config.h b/arch/arm/boards/clep7212/config.h
deleted file mode 100644
index 6ae9a40..0000000
--- a/arch/arm/boards/clep7212/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif  /* __CONFIG_H */
diff --git a/arch/arm/boards/crystalfontz-cfa10036/config.h b/arch/arm/boards/crystalfontz-cfa10036/config.h
deleted file mode 100644
index 8f18fda..0000000
--- a/arch/arm/boards/crystalfontz-cfa10036/config.h
+++ /dev/null
@@ -1,16 +0,0 @@
-/*
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-
-#ifndef _CONFIG_H_
-# define _CONFIG_H_
-
-#endif /* _CONFIG_H_ */
diff --git a/arch/arm/boards/edb93xx/config.h b/arch/arm/boards/edb93xx/config.h
deleted file mode 100644
index 6ae9a40..0000000
--- a/arch/arm/boards/edb93xx/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif  /* __CONFIG_H */
diff --git a/arch/arm/boards/efika-mx-smartbook/config.h b/arch/arm/boards/efika-mx-smartbook/config.h
deleted file mode 100644
index 143adf2..0000000
--- a/arch/arm/boards/efika-mx-smartbook/config.h
+++ /dev/null
@@ -1,17 +0,0 @@
-/**
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- */
-
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/eukrea_cpuimx27/config.h b/arch/arm/boards/eukrea_cpuimx27/config.h
deleted file mode 100644
index e35bc04..0000000
--- a/arch/arm/boards/eukrea_cpuimx27/config.h
+++ /dev/null
@@ -1,22 +0,0 @@
-/*
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- */
-
-/**
- * @file
- * @brief Global defintions for the ARM Eukrea cpuimx27 board
- */
-
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/eukrea_cpuimx51/config.h b/arch/arm/boards/eukrea_cpuimx51/config.h
deleted file mode 100644
index 77d7572..0000000
--- a/arch/arm/boards/eukrea_cpuimx51/config.h
+++ /dev/null
@@ -1,20 +0,0 @@
-/**
- * @file
- * @brief Global defintions for the ARM i.MX51 based cpuimx51 board
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- */
-
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/freescale-mx23-evk/config.h b/arch/arm/boards/freescale-mx23-evk/config.h
deleted file mode 100644
index 9f357bb..0000000
--- a/arch/arm/boards/freescale-mx23-evk/config.h
+++ /dev/null
@@ -1,12 +0,0 @@
-/*
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
diff --git a/arch/arm/boards/freescale-mx28-evk/config.h b/arch/arm/boards/freescale-mx28-evk/config.h
deleted file mode 100644
index 8f18fda..0000000
--- a/arch/arm/boards/freescale-mx28-evk/config.h
+++ /dev/null
@@ -1,16 +0,0 @@
-/*
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-
-#ifndef _CONFIG_H_
-# define _CONFIG_H_
-
-#endif /* _CONFIG_H_ */
diff --git a/arch/arm/boards/freescale-mx51-pdk/config.h b/arch/arm/boards/freescale-mx51-pdk/config.h
deleted file mode 100644
index 97bfcd3..0000000
--- a/arch/arm/boards/freescale-mx51-pdk/config.h
+++ /dev/null
@@ -1,20 +0,0 @@
-/**
- * @file
- * @brief Global defintions for the ARM i.MX51 based babbage board
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- */
-
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/freescale-mx53-loco/config.h b/arch/arm/boards/freescale-mx53-loco/config.h
deleted file mode 100644
index 97bfcd3..0000000
--- a/arch/arm/boards/freescale-mx53-loco/config.h
+++ /dev/null
@@ -1,20 +0,0 @@
-/**
- * @file
- * @brief Global defintions for the ARM i.MX51 based babbage board
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- */
-
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/freescale-mx53-smd/config.h b/arch/arm/boards/freescale-mx53-smd/config.h
deleted file mode 100644
index 97bfcd3..0000000
--- a/arch/arm/boards/freescale-mx53-smd/config.h
+++ /dev/null
@@ -1,20 +0,0 @@
-/**
- * @file
- * @brief Global defintions for the ARM i.MX51 based babbage board
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- */
-
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/freescale-mx6-arm2/config.h b/arch/arm/boards/freescale-mx6-arm2/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/arm/boards/freescale-mx6-arm2/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/config.h b/arch/arm/boards/freescale-mx6-sabrelite/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/arm/boards/freescale-mx6-sabrelite/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/freescale-mx6-sabresd/config.h b/arch/arm/boards/freescale-mx6-sabresd/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/arm/boards/freescale-mx6-sabresd/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/guf-neso/config.h b/arch/arm/boards/guf-neso/config.h
deleted file mode 100644
index f8bc790..0000000
--- a/arch/arm/boards/guf-neso/config.h
+++ /dev/null
@@ -1,22 +0,0 @@
-/*
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- */
-
-/**
- * @file
- * @brief Global defintions for the ARM i.MX27 based pcm038
- */
-
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/guf-vincell/config.h b/arch/arm/boards/guf-vincell/config.h
deleted file mode 100644
index b7effe5..0000000
--- a/arch/arm/boards/guf-vincell/config.h
+++ /dev/null
@@ -1,24 +0,0 @@
-/**
- * @file
- * @brief Global defintions for the ARM i.MX51 based babbage board
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/highbank/config.h b/arch/arm/boards/highbank/config.h
deleted file mode 100644
index 25bb18f..0000000
--- a/arch/arm/boards/highbank/config.h
+++ /dev/null
@@ -1,5 +0,0 @@
-
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/imx21ads/config.h b/arch/arm/boards/imx21ads/config.h
deleted file mode 100644
index d5ee8f8..0000000
--- a/arch/arm/boards/imx21ads/config.h
+++ /dev/null
@@ -1,22 +0,0 @@
-/*
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- */
-
-/**
- * @file
- * @brief Global defintions for the ARM i.MX21 based imx21ads
- **/
-
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/imx233-olinuxino/config.h b/arch/arm/boards/imx233-olinuxino/config.h
deleted file mode 100644
index 87d9e2f..0000000
--- a/arch/arm/boards/imx233-olinuxino/config.h
+++ /dev/null
@@ -1,21 +0,0 @@
-/*
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-
-#ifndef _CONFIG_H_
-# define _CONFIG_H_
-
-#endif /* _CONFIG_H_ */
diff --git a/arch/arm/boards/imx27ads/config.h b/arch/arm/boards/imx27ads/config.h
deleted file mode 100644
index eb406f0..0000000
--- a/arch/arm/boards/imx27ads/config.h
+++ /dev/null
@@ -1,22 +0,0 @@
-/*
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- */
-
-/**
- * @file
- * @brief Global defintions for the Freescale imx27ads ARM board
- */
-
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/karo-tx28/config.h b/arch/arm/boards/karo-tx28/config.h
deleted file mode 100644
index 8f18fda..0000000
--- a/arch/arm/boards/karo-tx28/config.h
+++ /dev/null
@@ -1,16 +0,0 @@
-/*
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-
-#ifndef _CONFIG_H_
-# define _CONFIG_H_
-
-#endif /* _CONFIG_H_ */
diff --git a/arch/arm/boards/karo-tx51/config.h b/arch/arm/boards/karo-tx51/config.h
deleted file mode 100644
index 143adf2..0000000
--- a/arch/arm/boards/karo-tx51/config.h
+++ /dev/null
@@ -1,17 +0,0 @@
-/**
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- */
-
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/karo-tx53/config.h b/arch/arm/boards/karo-tx53/config.h
deleted file mode 100644
index b7effe5..0000000
--- a/arch/arm/boards/karo-tx53/config.h
+++ /dev/null
@@ -1,24 +0,0 @@
-/**
- * @file
- * @brief Global defintions for the ARM i.MX51 based babbage board
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/mioa701/config.h b/arch/arm/boards/mioa701/config.h
deleted file mode 100644
index 390aa30..0000000
--- a/arch/arm/boards/mioa701/config.h
+++ /dev/null
@@ -1,22 +0,0 @@
-/*
- * (C) 2011 Robert Jarzmik <robert.jarzmik@free.fr>
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif  /* __CONFIG_H */
diff --git a/arch/arm/boards/netx/config.h b/arch/arm/boards/netx/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/arm/boards/netx/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/nhk8815/config.h b/arch/arm/boards/nhk8815/config.h
deleted file mode 100644
index da84fa5..0000000
--- a/arch/arm/boards/nhk8815/config.h
+++ /dev/null
@@ -1 +0,0 @@
-/* nothing */
diff --git a/arch/arm/boards/omap343xdsp/config.h b/arch/arm/boards/omap343xdsp/config.h
deleted file mode 100644
index 143adf2..0000000
--- a/arch/arm/boards/omap343xdsp/config.h
+++ /dev/null
@@ -1,17 +0,0 @@
-/**
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- */
-
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/omap3evm/config.h b/arch/arm/boards/omap3evm/config.h
deleted file mode 100644
index 143adf2..0000000
--- a/arch/arm/boards/omap3evm/config.h
+++ /dev/null
@@ -1,17 +0,0 @@
-/**
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- */
-
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/panda/config.h b/arch/arm/boards/panda/config.h
deleted file mode 100644
index da84fa5..0000000
--- a/arch/arm/boards/panda/config.h
+++ /dev/null
@@ -1 +0,0 @@
-/* nothing */
diff --git a/arch/arm/boards/pcm038/config.h b/arch/arm/boards/pcm038/config.h
deleted file mode 100644
index f8bc790..0000000
--- a/arch/arm/boards/pcm038/config.h
+++ /dev/null
@@ -1,22 +0,0 @@
-/*
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- */
-
-/**
- * @file
- * @brief Global defintions for the ARM i.MX27 based pcm038
- */
-
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/pcm049/config.h b/arch/arm/boards/pcm049/config.h
deleted file mode 100644
index da84fa5..0000000
--- a/arch/arm/boards/pcm049/config.h
+++ /dev/null
@@ -1 +0,0 @@
-/* nothing */
diff --git a/arch/arm/boards/pcm051/config.h b/arch/arm/boards/pcm051/config.h
deleted file mode 100644
index 8b2b876..0000000
--- a/arch/arm/boards/pcm051/config.h
+++ /dev/null
@@ -1,21 +0,0 @@
-/**
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/phycard-a-l1/config.h b/arch/arm/boards/phycard-a-l1/config.h
deleted file mode 100644
index 85ceff9..0000000
--- a/arch/arm/boards/phycard-a-l1/config.h
+++ /dev/null
@@ -1,18 +0,0 @@
-/*
- * (C) Copyright 2011 Jurgen Kilb <j.kilb@phytec.de>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif /* __CONFIG_H */
diff --git a/arch/arm/boards/phycard-a-xl2/config.h b/arch/arm/boards/phycard-a-xl2/config.h
deleted file mode 100644
index da84fa5..0000000
--- a/arch/arm/boards/phycard-a-xl2/config.h
+++ /dev/null
@@ -1 +0,0 @@
-/* nothing */
diff --git a/arch/arm/boards/phycard-i.MX27/config.h b/arch/arm/boards/phycard-i.MX27/config.h
deleted file mode 100644
index f8bc790..0000000
--- a/arch/arm/boards/phycard-i.MX27/config.h
+++ /dev/null
@@ -1,22 +0,0 @@
-/*
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- */
-
-/**
- * @file
- * @brief Global defintions for the ARM i.MX27 based pcm038
- */
-
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/raspberry-pi/config.h b/arch/arm/boards/raspberry-pi/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/arm/boards/raspberry-pi/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/toshiba-ac100/config.h b/arch/arm/boards/toshiba-ac100/config.h
deleted file mode 100644
index 25bb18f..0000000
--- a/arch/arm/boards/toshiba-ac100/config.h
+++ /dev/null
@@ -1,5 +0,0 @@
-
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/tqma53/config.h b/arch/arm/boards/tqma53/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/arm/boards/tqma53/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/versatile/config.h b/arch/arm/boards/versatile/config.h
deleted file mode 100644
index 25bb18f..0000000
--- a/arch/arm/boards/versatile/config.h
+++ /dev/null
@@ -1,5 +0,0 @@
-
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/vexpress/config.h b/arch/arm/boards/vexpress/config.h
deleted file mode 100644
index 25bb18f..0000000
--- a/arch/arm/boards/vexpress/config.h
+++ /dev/null
@@ -1,5 +0,0 @@
-
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/mips/boards/dlink-dir-320/config.h b/arch/mips/boards/dlink-dir-320/config.h
deleted file mode 100644
index db5f011..0000000
--- a/arch/mips/boards/dlink-dir-320/config.h
+++ /dev/null
@@ -1,15 +0,0 @@
-/*
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- *
- */
-
-/* nothing special yet */
diff --git a/arch/mips/boards/qemu-malta/config.h b/arch/mips/boards/qemu-malta/config.h
deleted file mode 100644
index db5f011..0000000
--- a/arch/mips/boards/qemu-malta/config.h
+++ /dev/null
@@ -1,15 +0,0 @@
-/*
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- *
- */
-
-/* nothing special yet */
diff --git a/arch/mips/boards/rzx50/config.h b/arch/mips/boards/rzx50/config.h
deleted file mode 100644
index db5f011..0000000
--- a/arch/mips/boards/rzx50/config.h
+++ /dev/null
@@ -1,15 +0,0 @@
-/*
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- *
- */
-
-/* nothing special yet */
diff --git a/arch/sandbox/board/config.h b/arch/sandbox/board/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/sandbox/board/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/x86/boards/x86_generic/config.h b/arch/x86/boards/x86_generic/config.h
deleted file mode 100644
index 473edb5..0000000
--- a/arch/x86/boards/x86_generic/config.h
+++ /dev/null
@@ -1,17 +0,0 @@
-/*
- * Copyright (C) 2009 Juergen Beisert, Pengutronix
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- *
- */
-
-/* nothing special yet */
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
